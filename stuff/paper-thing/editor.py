import json
import os

DATA_FILE = "data.txt"

def load_data():
    if not os.path.exists(DATA_FILE):
        return {"nodes": [], "edges": []}
    with open(DATA_FILE, "r", encoding="utf-8") as f:
        return json.load(f)

def save_data(data):
    with open(DATA_FILE, "w", encoding="utf-8") as f:
        json.dump(data, f, indent=2)
    print("✅ Data saved to", DATA_FILE)

def get_node_by_label(data, label):
    for node in data["nodes"]:
        if node["label"] == label:
            return node
    return None

def show_graph(data):
    print("\n📌 Current Graph:")
    print("Nodes:")
    for n in data["nodes"]:
        flag = " (WINNER)" if n.get("winner") else ""
        print(f"  {n['label']} (id={n['id']}, day={n.get('day','?')}){flag}")
    print("Edges:")
    for e in data["edges"]:
        from_node = next((n for n in data["nodes"] if n["id"] == e["from"]), None)
        to_node = next((n for n in data["nodes"] if n["id"] == e["to"]), None)
        if from_node and to_node:
            print(f"  {from_node['label']} -> {to_node['label']}")
    print()

def main():
    data = load_data()
    next_id = max((n["id"] for n in data["nodes"]), default=0) + 1

    while True:
        show_graph(data)
        print("Options:")
        print(" 1. Add Node")
        print(" 2. Add Edge")
        print(" 3. Edit Node Day")
        print(" 4. Delete Node")
        print(" 5. Delete Edge")
        print(" 6. Set Winner Node")
        print(" 7. Save & Exit")
        choice = input("Enter choice: ").strip()

        if choice == "1":
            label = input("Enter new node label: ").strip()
            if get_node_by_label(data, label):
                print("⚠️ Node with that label already exists!")
                continue
            try:
                day = int(input("Enter day (number): ").strip())
            except ValueError:
                day = 1
            data["nodes"].append({"id": next_id, "label": label, "day": day, "winner": False})
            next_id += 1

        elif choice == "2":
            from_label = input("From node label: ").strip()
            to_label = input("To node label: ").strip()
            from_node = get_node_by_label(data, from_label)
            to_node = get_node_by_label(data, to_label)
            if not from_node or not to_node:
                print("⚠️ One or both nodes not found!")
                continue
            data["edges"].append({"from": from_node["id"], "to": to_node["id"]})

        elif choice == "3":
            label = input("Node label to edit: ").strip()
            node = get_node_by_label(data, label)
            if not node:
                print("⚠️ Node not found!")
                continue
            try:
                day = int(input(f"Enter new day for {label}: ").strip())
                node["day"] = day
            except ValueError:
                print("⚠️ Invalid day!")

        elif choice == "4":
            label = input("Node label to delete: ").strip()
            node = get_node_by_label(data, label)
            if not node:
                print("⚠️ Node not found!")
                continue
            node_id = node["id"]
            data["nodes"] = [n for n in data["nodes"] if n["id"] != node_id]
            data["edges"] = [e for e in data["edges"] if e["from"] != node_id and e["to"] != node_id]
            print(f"🗑️ Deleted node {label} and its edges")

        elif choice == "5":
            from_label = input("From node label: ").strip()
            to_label = input("To node label: ").strip()
            from_node = get_node_by_label(data, from_label)
            to_node = get_node_by_label(data, to_label)
            if not from_node or not to_node:
                print("⚠️ One or both nodes not found!")
                continue
            before = len(data["edges"])
            data["edges"] = [
                e for e in data["edges"]
                if not (e["from"] == from_node["id"] and e["to"] == to_node["id"])
            ]
            if len(data["edges"]) < before:
                print(f"🗑️ Deleted edge {from_label} -> {to_label}")
            else:
                print("⚠️ Edge not found!")

        elif choice == "6":
            label = input("Enter winner node label: ").strip()
            node = get_node_by_label(data, label)
            if not node:
                print("⚠️ Node not found!")
                continue
            # Clear old winners
            for n in data["nodes"]:
                n["winner"] = False
            node["winner"] = True
            print(f"🏆 Winner set: {label}")

        elif choice == "7":
            save_data(data)
            break

        else:
            print("⚠️ Invalid choice, try again.")

if __name__ == "__main__":
    main()

