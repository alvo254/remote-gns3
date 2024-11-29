
## **1. QEMU (Quick Emulator)**

### **Overview:**

- **QEMU** is a generic, open-source emulator that can emulate various hardware architectures, including x86, ARM, and PowerPC.
- It allows running full virtual machines (VMs) such as Linux, Windows, or network appliances (e.g., FortiGate, ASA, and VyOS).

### **Key Features:**

- **Flexible Architecture**: Can emulate different CPU types and hardware.
- **Versatility**: Ideal for running software that requires x86 or ARM architecture.
- **Storage and Disk**: Supports virtual hard disks (e.g., `.qcow2`, `.img` formats).
- **Full OS Emulation**: Can boot and run entire operating systems.

### **Use Cases in GNS3:**

- Running network appliances (e.g., FortiGate, Palo Alto, pfSense).
- Testing configurations in virtualized environments.
- Emulating firewalls, load balancers, and Linux-based routers.

### **Example:**

Run a FortiGate firewall or Linux server as part of a network topology.

---

## **2. Dynamips**

### **Overview:**

- **Dynamips** is an emulator specifically designed to emulate Cisco IOS for routers.
- It can simulate hardware for older Cisco routers like the 7200, 3600, and 2600 series.

### **Key Features:**

- **Cisco-Specific**: Focused on Cisco router IOS images.
- **Resource Efficiency**: Lightweight compared to running a full VM.
- **Direct Access**: Allows users to configure IOS directly using Cisco CLI.

### **Limitations:**

- Only supports older IOS versions (e.g., `.bin` images for older Cisco routers).
- Does not support modern features or devices like Catalyst switches or ISR routers.

### **Use Cases in GNS3:**

- Practicing Cisco router configurations.
- Testing older IOS features and routing protocols (e.g., RIP, EIGRP, OSPF).
- Simulating WAN connections or basic routing topologies.

### **Example:**

Configure OSPF routing between two Cisco 7200 routers.

---

## **3. IOU (IOS on UNIX)**

### **Overview:**

- **IOU (IOS on UNIX)** is a Cisco proprietary emulator that allows running Cisco IOS images natively on UNIX/Linux platforms.
- It is lightweight and fast, specifically for switches and routers.

### **Key Features:**

- **Cisco Switching Support**: Includes Layer 2 features, making it suitable for switch emulation.
- **Speed**: Faster and less resource-intensive than Dynamips or QEMU.
- **Native CLI**: Provides direct access to the Cisco IOS CLI.

### **Limitations:**

- Requires a license from Cisco, as it is not publicly distributed.
- Only compatible with UNIX/Linux systems.
- Limited to specific IOS versions and lacks full hardware emulation.

### **Use Cases in GNS3:**

- Simulating Layer 2 and Layer 3 Cisco switches.
- Testing VLANs, trunking, spanning tree protocols, and advanced switch features.
- Building CCNA/CCNP practice labs with Cisco routers and switches.

### **Example:**

Create a topology with Layer 2 switches to practice VLAN configurations.

## **4. IOL (IOS on Linux)**

### **Overview:**

- **IOL** (IOS on Linux) is a Cisco emulator similar to IOU but designed to run on Linux systems. It's lightweight and emulates Cisco IOS for routers and switches.
- Unlike Dynamips, which emulates actual Cisco hardware, **IOL** runs IOS directly on Linux without hardware dependencies.

### **Key Features:**

- **Layer 2 and Layer 3 Support**: Emulates both routers and switches, making it versatile.
- **Lightweight**: Consumes fewer resources compared to Dynamips and QEMU.
- **Linux Native**: Runs directly on Linux, providing better performance compared to Dynamips.
- **Wide Support**: Includes features for VLANs, STP, OSPF, BGP, etc.

### **Limitations:**

- **Licensing**: Requires Cisco proprietary images and licensing, which are not publicly distributed.
- **Linux-Specific**: Works natively on Linux but requires additional steps to run on other platforms (e.g., via GNS3 VM).

### **Use Cases in GNS3:**

- Simulating advanced Cisco routing and switching labs.
- Practicing VLANs, spanning tree protocols, and inter-VLAN routing.
- Building labs for Cisco certifications like CCNA, CCNP, and CCIE.

### **Example:**

Create a topology with Cisco Layer 3 switches for inter-VLAN routing, combining routing protocols like OSPF and BGP.

---

## **Updated Comparison Table**

|**Feature**|**QEMU**|**Dynamips**|**IOU (IOS on UNIX)**|**IOL (IOS on Linux)**|
|---|---|---|---|---|
|**Focus**|Generic VMs and appliances|Cisco routers (older)|Cisco routers and switches|Cisco routers and switches|
|**Layer 2 Support**|Limited (depends on VM)|None|Yes (switching supported)|Yes (switching supported)|
|**Layer 3 Support**|Depends on appliance|Yes|Yes|Yes|
|**Performance**|Moderate|Lightweight|Fast|Very Fast|
|**Use Cases**|Firewalls, custom VMs|Router labs|Switching and routing|Switching and routing|
|**Hardware Emulation**|Full system emulation|Limited|Limited|Limited|
|**Ease of Setup**|Medium|Easy|Medium (requires licensing)|Medium (requires licensing)|
|**Supported Platforms**|Multi-platform|Multi-platform|Linux|Linux (GNS3 VM required on other OS)|

---

## **Best Use Cases for IOL**

- **Switching Labs**: IOL is excellent for Layer 2 topologies where switching protocols like VLANs, STP, and trunking are involved.
- **Routing Protocols**: Practice Layer 3 routing protocols such as OSPF, EIGRP, and BGP.
- **Scalable Cisco Labs**: Since it is lightweight, IOL is perfect for building large-scale labs for certification preparation.

---

### **Key Difference Between IOU and IOL**

- Both IOU and IOL serve similar purposes, but **IOL** is more widely used with GNS3 as it integrates better with the GNS3 ecosystem and is slightly faster in performance.
- IOU was the earlier version, while IOL is an updated implementation designed for better efficiency.

---

### **Summary of Use Cases for All Emulators**

1. **QEMU**: Ideal for multi-vendor environments with firewalls, Linux, or non-Cisco appliances.
2. **Dynamips**: Great for older Cisco router configurations.
3. **IOU**: Focuses on Cisco devices but is limited to UNIX systems.
4. **IOL**: The best choice for Cisco switching and routing labs due to its performance and lightweight nature.

By combining these emulators in GNS3, you can create versatile, high-performance network simulations tailored to specific learning or testing needs.

## **Recommended Free Setups**

| **Device**           | **Routing Protocols Supported** | **Best Use Cases**                           |
| -------------------- | ------------------------------- | -------------------------------------------- |
| **Dynamips**         | RIP, OSPF, EIGRP, BGP           | Cisco-focused labs for certifications.       |
| **IOL**              | RIP, OSPF, EIGRP, BGP           | Advanced Cisco routing and switching labs.   |
| **VyOS**             | RIP, OSPF, BGP                  | Multi-vendor routing and edge scenarios.     |
| **Mikrotik CHR**     | RIP, OSPF, BGP                  | Multi-vendor routing with lab licensing.     |
| **FRRouting/Quagga** | RIP, OSPF, BGP                  | Open-source labs and interoperability tests. |
| **Linux VMs**        | RIP, OSPF, BGP                  | Cost-effective custom routing solutions.     |

### **Summary of Licensing**

|**Device**|**Cisco License Needed?**|
|---|---|
|**Dynamips**|Yes|
|**Cisco IOU**|Yes|
|**Cisco IOL**|Yes|
|**VyOS**|No|
|**Mikrotik CHR**|No|
|**Linux Containers**|No|
|**QEMU Appliances**|No (unless using Cisco)|
|**Host-Based Routing**|No|

---

### **Best Free and Legal Options**

- For a completely free lab, use **VyOS**, **Mikrotik CHR**, **FRRouting/Quagga**, or Linux-based routers.
- Avoid Cisco-specific emulators like Dynamips, IOU, or IOL unless you have the proper licensing.


## **QEMU Routers and Switches Without Licensing**

### **1. VyOS**

- **Type**: Router
- **License**: Open-source
- **Features**:
    - Advanced routing protocols: **BGP**, **OSPF**, **RIP**, and **MPLS**.
    - Network Address Translation (NAT), VPNs (IPSec, WireGuard, OpenVPN).
    - Stateful firewall and policy-based routing.
- **Advantages**:
    - Fully open-source and community-supported.
    - Lightweight and runs well on QEMU in GNS3.
- **Use Cases**:
    - Edge routing.
    - Multi-protocol routing scenarios.
    - VPN setups for simulated environments.

---

### **2. MikroTik Cloud Hosted Router (CHR)**

- **Type**: Router
- **License**: Free (limited to 1 Mbps throughput without a license).
- **Features**:
    - **BGP**, **OSPF**, and **RIP**.
    - MPLS, VLANs, VRFs, and load balancing.
    - VPN protocols (IPSec, PPTP, L2TP).
    - Stateful firewall with advanced filtering.
- **Advantages**:
    - Powerful routing and network features.
    - Free to use for labs with limitations.
- **Use Cases**:
    - BGP testing in multi-vendor setups.
    - Interoperability labs with Cisco and other devices.

---

### **3. Open vSwitch (OVS)**

- **Type**: Switch
- **License**: Open-source
- **Features**:
    - Layer 2 and Layer 3 switching with **VLANs** and **STP**.
    - OpenFlow support for SDN experimentation.
    - GRE, VXLAN, and Geneve tunneling for overlay networks.
- **Advantages**:
    - Lightweight and highly configurable.
    - Integrates well with GNS3 and SDN controllers.
- **Use Cases**:
    - Advanced Layer 2 simulations.
    - SDN and network automation labs.

---

### **4. Cumulus VX**

- **Type**: Switch and Router
- **License**: Free for lab use
- **Features**:
    - Linux-based OS with full support for **BGP**, **OSPF**, and **RIP**.
    - Layer 2 switching with **VLANs**, **STP**, and **MLAG**.
    - Network automation tools (e.g., Ansible, Chef, and Puppet integration).
    - EVPN and VXLAN for advanced data center networking.
- **Advantages**:
    - Acts as a true Layer 2/3 device with modern features.
    - Designed for automation and programmability.
- **Use Cases**:
    - Data center networking labs.
    - Advanced routing and switching labs.

---

### **5. FRRouting (FRR)**

- **Type**: Routing Daemon
- **License**: Open-source
- **Features**:
    - Supports **BGP**, **OSPF**, **RIP**, **IS-IS**, and **PIM** (multicast routing).
    - MPLS support for label switching.
    - Integrated with Linux kernel networking.
- **Advantages**:
    - Can be run on a lightweight Linux VM via QEMU.
    - Highly flexible and extensible for routing labs.
- **Use Cases**:
    - Multi-protocol routing experiments.
    - Open-source alternatives to Cisco features.

---

### **6. GNS3 Ethernet Switch**

- **Type**: Basic Switch
- **License**: Free (built into GNS3)
- **Features**:
    - Basic Layer 2 switching with **VLAN** support.
    - No advanced features like spanning tree protocols.
- **Advantages**:
    - Completely free and simple to use.
    - Lightweight and effective for basic Layer 2 labs.
- **Use Cases**:
    - Adding basic switch functionality to networks.
    - Simple topologies with VLAN configurations.

---

## **Comparison Table**

|**Device**|**Type**|**Features**|**Best Use Cases**|**License**|
|---|---|---|---|---|
|**VyOS**|Router|BGP, OSPF, RIP, VPN, NAT|Advanced routing, edge, and VPN labs|Open-source|
|**MikroTik CHR**|Router|BGP, OSPF, RIP, MPLS, VRF|Multi-protocol routing and interoperability|Free (limited)|
|**Open vSwitch**|Switch|Layer 2/3, OpenFlow, VLANs, tunneling|SDN and advanced switching experiments|Open-source|
|**Cumulus VX**|Switch/Router|BGP, OSPF, VLANs, EVPN, VXLAN|Data center and Layer 3 switching labs|Free (labs)|
|**FRRouting**|Router Daemon|BGP, OSPF, IS-IS, RIP, MPLS|Open-source, multi-protocol routing setups|Open-source|
|**GNS3 Switch**|Basic Switch|Layer 2, VLANs|Basic Layer 2 connectivity in topologies|Free (built-in)|

---

## **Best Options for Advanced Features Without Licensing**

1. **VyOS**: Ideal for routing labs with full protocol support and edge use cases.
2. **Cumulus VX**: Perfect for switching labs with modern data center features.
3. **FRRouting**: Great for open-source routing labs with multi-protocol support.
4. **MikroTik CHR**: Useful for advanced routing with some limitations in the free tier.


If your interface is configured with the IP address **192.168.1.1/24**, this address belongs to **VLAN 1** (since it's the default VLAN in most networks, although you can assign it any VLAN ID you prefer).

However, for other VLANs to exist on the **same physical interface**, you would typically create **VLAN interfaces** on top of the physical interface (e.g., **ether1**). Each VLAN would have its own **VLAN ID** and **subnet**. These VLAN interfaces do not directly overlap with your **192.168.1.0/24** subnet, as they represent logical interfaces that segregate traffic even though they use the same physical interface.

### Example Scenario:

Let’s say your physical interface (**ether1**) is using **192.168.1.1/24** for **VLAN 1**. Now, you want to create additional VLANs on the same interface.

1. **VLAN 1 (Default VLAN)**:
    - IP: **192.168.1.1/24** (This is already your existing IP configuration).
2. **VLAN 10**:
    - You can assign a **subnet like 192.168.10.0/24** for **VLAN 10**.
    - The IP address for the router in VLAN 10 might be **192.168.10.1/24**.
3. **VLAN 20**:
    - You can assign a **subnet like 192.168.20.0/24** for **VLAN 20**.
    - The IP address for the router in VLAN 20 might be **192.168.20.1/24**.


### **Subnetting Overview:**

You are correct that with a **/24** subnet mask, **24 bits** are allocated for the network portion of the IP address, and **8 bits** are left for the host portion.

- A **/24 subnet** means you have 256 possible IP addresses (from **0** to **255**), but the **first address (network address)** and the **last address (broadcast address)** are reserved for network functions, leaving you with **254 usable IP addresses**.

For example:

- **192.168.1.0/24**: This is the network address (used to identify the subnet).
- **192.168.1.255/24**: This is the broadcast address (used to send messages to all hosts in the subnet).
- **Usable addresses**: From **192.168.1.1** to **192.168.1.254**.

### **Understanding IPs in VLANs:**

When creating **VLANs** (Virtual LANs), each VLAN is typically assigned a separate subnet. Even though the **physical interface (ether1)** has the IP **192.168.1.2/24**, you are creating **virtual interfaces (VLANs)** on top of it with different subnets.

For example:

- **VLAN 10** uses the subnet **192.168.10.0/24**. This means the **router** or **switch** will have an IP in that range, such as **192.168.10.1/24**.
- **VLAN 20** uses the subnet **192.168.20.0/24**, with an IP like **192.168.20.1/24**.
- **VLAN 30** uses the subnet **192.168.30.0/24**, with an IP like **192.168.30.1/24**.

These IP addresses are used for routing between different VLANs, but they are **separate subnets** from your **ether1** interface **192.168.1.2/24**.

### **Why 192.168.10.1, 192.168.20.1, and 192.168.30.1?**

The reason for using **.1** as the IP address for each VLAN (e.g., **192.168.10.1/24**) is that it is common practice to assign **.1** as the **gateway IP** for each subnet. This is the IP address that devices within that VLAN will use to communicate with devices outside their local subnet.

So, in your setup:

- **192.168.1.2/24** on **ether1**: This is the **management IP** for the switch (MikroTik interface).
- **VLAN 10 (192.168.10.0/24)**: **192.168.10.1/24** is the **gateway IP** for this VLAN.
- **VLAN 20 (192.168.20.0/24)**: **192.168.20.1/24** is the **gateway IP** for this VLAN.
- **VLAN 30 (192.168.30.0/24)**: **192.168.30.1/24** is the **gateway IP** for this VLAN.

### **Why are VLANs on Different Subnets?**

VLANs are used to **segregate traffic** into logical groups. Each VLAN typically gets its own subnet for **network isolation**. This ensures that devices in one VLAN cannot communicate directly with devices in another VLAN unless routed via a **router** or a **Layer 3 switch**.

The **/24** subnet mask simply means you have a **range of 256 IPs** available for each subnet. So:

- **VLAN 10** uses the IP range **192.168.10.0 - 192.168.10.255**.
- **VLAN 20** uses the IP range **192.168.20.0 - 192.168.20.255**.
- **VLAN 30** uses the IP range **192.168.30.0 - 192.168.30.255**.

Each of these **subnets** is isolated from the others until you configure routing between them (typically on a **router** or **Layer 3 switch**).

### **Ether1 and VLAN Configuration:**

The **ether1** interface on your MikroTik switch has an IP address of **192.168.1.2/24**, which is part of the **192.168.1.0/24** network. This is the **management IP** for the switch.

However, when you create VLANs on **ether1**, the switch creates virtual interfaces for those VLANs (e.g., **vlan10**, **vlan20**, **vlan30**), each with its own **IP subnet** (e.g., **192.168.10.1/24**, **192.168.20.1/24**, **192.168.30.1/24**). These IPs are the **gateways** for the respective VLANs.

### **How It Works Together:**

- **ether1** (IP: **192.168.1.2/24**) is the **physical interface** connecting the switch to the router.
- **VLAN 10**, **VLAN 20**, and **VLAN 30** are **virtual interfaces** created on top of **ether1** to provide **segmentation** and **routing** between different subnets.
- The **.1 IP addresses** (e.g., **192.168.10.1**, **192.168.20.1**, **192.168.30.1**) are the **default gateways** for each VLAN.

### In Summary:

- **VLANs** use **different subnets** to segment network traffic.
- The **/24 subnet mask** defines how many hosts can exist in each subnet (256 addresses, with 254 usable).
- The **.1 address** is typically assigned as the **gateway IP** for each subnet.
- **192.168.1.2/24** is the **IP address** for the **physical interface** **ether1**, but each **VLAN** has its own subnet (e.g., **192.168.10.1/24** for **VLAN 10**).