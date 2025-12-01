# Rectangle Area Calculator Smart Contract DApp
**Student ID: 230504583**

## 📋 Project Overview
This project is a blockchain-based rectangle area calculator that allows users to:
- Set the width of a rectangle and store it on the Sepolia blockchain
- Set the height of a rectangle and store it on the Sepolia blockchain
- Retrieve the stored dimensions from the contract
- Calculate the area of the rectangle (width × height)

## 📁 Project Files
- `BC230504583.sol` - Smart contract source code (Solidity)
- `BC230504583.html` - Front-end web interface to interact with the contract
- `README.md` - This file (project documentation)

---

## 🚀 Part 1: Deploy Smart Contract to Sepolia

### Step 1: Open Remix IDE
1. Go to [https://remix.ethereum.org/](https://remix.ethereum.org/)
2. Create a new file named `BC230504583.sol`
3. Copy and paste the entire content from the `BC230504583.sol` file in this project

### Step 2: Compile the Contract
1. Click on the "Solidity Compiler" icon in the left sidebar (it looks like an "S")
2. Select compiler version: `0.8.0` or higher (e.g., `0.8.20`)
3. Click the **"Compile BC230504583.sol"** button
4. Wait for successful compilation (green checkmark should appear)

### Step 3: Get Test ETH for Sepolia
1. Make sure MetaMask is installed and set to **Sepolia Test Network**
2. Get free test ETH from a Sepolia faucet:
   - [Alchemy Sepolia Faucet](https://sepoliafaucet.com/)
   - [Infura Sepolia Faucet](https://www.infura.io/faucet/sepolia)
   - [Google Cloud Sepolia Faucet](https://cloud.google.com/application/web3/faucet/ethereum/sepolia)
3. You'll need at least 0.05 SepoliaETH to deploy

### Step 4: Deploy to Sepolia
1. Click on the "Deploy & Run Transactions" icon (Ethereum logo with arrow)
2. In the **ENVIRONMENT** dropdown, select **"Injected Provider - MetaMask"**
3. MetaMask will pop up - make sure you're connected to **Sepolia Test Network**
4. Confirm the connection in MetaMask
5. Select **"BC230504583"** contract from the CONTRACT dropdown
6. Click the **"Deploy"** button (orange)
7. Confirm the transaction in MetaMask popup
8. Wait for the transaction to be mined (15-30 seconds)

### Step 5: Copy Contract Details

1. **Copy the Contract Address:**
   - Look in the "Deployed Contracts" section at the bottom
   - You'll see your contract with an address like `0x1234...abcd`
   - Click the copy icon next to the address
   - **Save this address** - you'll need it for the HTML file!

2. **Verify the Contract (Optional but Recommended):**
   - Go to [Sepolia Etherscan](https://sepolia.etherscan.io/)
   - Search for your contract address
   - You should see your deployment transaction

---

## 🌐 Part 2: Set Up the Front-End

### Step 1: Update BC230504583.html with Contract Address
1. Open `BC230504583.html` in a text editor (VS Code, Notepad++, etc.)
2. Find this line near the top of the `<script>` section:

```javascript
const CONTRACT_ADDRESS = "YOUR_CONTRACT_ADDRESS_HERE";
```

3. **Replace `YOUR_CONTRACT_ADDRESS_HERE`** with your actual contract address from Step 5 above

Example after editing:
```javascript
const CONTRACT_ADDRESS = "0x1234567890abcdef1234567890abcdef12345678";
```

4. **Save the file**

**Note:** The ABI is already included in the HTML file and matches the BC230504583.sol contract, so you don't need to update it.

---

## 🖥️ Part 3: Test Locally (Optional)

### Option 1: Using Python
If you have Python installed:

```powershell
# Navigate to your project folder
cd "c:\Users\Royal\Desktop\blockchain\Assignment6"

# Python 3
python -m http.server 8000
```

Then open your browser to: **http://localhost:8000/BC230504583.html**

### Option 2: Using VS Code Live Server Extension
1. Install the "Live Server" extension in VS Code
2. Right-click on `BC230504583.html`
3. Select **"Open with Live Server"**

---

## 🎮 Part 4: Using the DApp

### Initial Setup
1. Make sure MetaMask is installed and unlocked
2. Switch MetaMask to **Sepolia Test Network**
3. Open the web page (BC230504583.html)
4. Click **"Connect MetaMask"** button
5. Approve the connection in MetaMask popup

### Setting Rectangle Dimensions

1. Enter an amount in ETH (e.g., `0.01`)
2. Click **"Donate ETH"**
3. Confirm the transaction in MetaMask
4. Wait for confirmation (15-30 seconds)
5. Your donation will appear in the stats and donor list

### Viewing Top Donors
1. Click **"Load Top Donors"** button
2. The leaderboard will show the top 10 donors sorted by amount

### Owner Functions (Withdrawing Funds)
**Note:** Only the account that deployed the contract can withdraw.

1. Enter the amount to withdraw (in ETH)
2. Enter the recipient address (can be your own)
3. Click **"Withdraw"** or **"Withdraw All"**
4. Confirm the transaction in MetaMask

---

## 🧪 Testing Your DApp

### Test Checklist
- [ ] Contract deploys successfully to Sepolia
- [ ] HTML page loads without errors in console (F12)
- [ ] MetaMask connects successfully
- [ ] Task statistics load correctly (total, completed, pending)
- [ ] Can add a new task (transaction succeeds)
- [ ] Task appears in the task list
- [ ] Can mark a task as completed

1. **Set Width:**
   - Enter a positive number in the "Width" input field
   - Click the **"Set Width 230504583"** button
   - Confirm the transaction in MetaMask
   - Wait for transaction confirmation (~15-30 seconds)
   - The current width will update automatically

2. **Set Height:**
   - Enter a positive number in the "Height" input field
   - Click the **"Set Height 230504583"** button
   - Confirm the transaction in MetaMask
   - Wait for transaction confirmation
   - The current height will update automatically

3. **Calculate Area:**
   - After setting both width and height
   - Click the **"Area 230504583"** button
   - Confirm the transaction in MetaMask
   - The calculated area (width × height) will be displayed
   - A visual representation of the rectangle will appear

### What to Test
- [ ] Connect wallet successfully
- [ ] Set width to a value (e.g., 10)
- [ ] Set height to a value (e.g., 5)
- [ ] Calculate area and verify result (e.g., 10 × 5 = 50)
- [ ] Visual rectangle appears with correct dimensions
- [ ] Try different values and recalculate

### Troubleshooting
1. **"Please install MetaMask"** → Install MetaMask extension
2. **"Switch to Sepolia Test Network"** → Change network in MetaMask
3. **Transaction fails** → Make sure you have enough Sepolia ETH for gas
4. **"Width/Height must be greater than 0"** → Enter positive numbers only
5. **Contract not responding** → Verify CONTRACT_ADDRESS is correct in HTML file

---

## 📤 Part 5: Upload to GitHub and Publish on GitHub Pages

### Step 1: Create GitHub Repository
1. Go to [GitHub.com](https://github.com) and sign in
2. Click the **"+"** icon in the top-right corner
3. Select **"New repository"**
4. Name it: `Assignment6` (or any name you prefer)
5. Set it to **Public**
6. Click **"Create repository"**

### Step 2: Upload Files
**Option A: Using Git (Recommended)**
```powershell
cd "c:\Users\Royal\Desktop\blockchain\Assignment6"
git init
git add BC230504583.sol BC230504583.html README.md
git commit -m "Add rectangle area calculator dApp"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/Assignment6.git
git push -u origin main
```

**Option B: Using GitHub Web Interface**
1. On your repository page, click **"Add file"** → **"Upload files"**
2. Drag and drop these files:
   - `BC230504583.sol`
   - `BC230504583.html`
   - `README.md`
3. Click **"Commit changes"**

### Step 3: Enable GitHub Pages
1. In your repository, click **"Settings"** (top menu)
2. Scroll down to **"Pages"** section in the left sidebar
3. Under **"Source"**, select **"main"** branch
4. Click **"Save"**
5. Wait 1-2 minutes for deployment
6. Your site will be available at:
   ```
   https://YOUR_USERNAME.github.io/Assignment6/BC230504583.html
   ```

### Step 4: Test Your Published Site
1. Visit your GitHub Pages URL
2. Make sure MetaMask is on Sepolia network
3. Test all functions:
   - Connect wallet
   - Set width
   - Set height
   - Calculate area

---

## 📝 Contract Functions Summary

| Function | Type | Parameters | Description |
|----------|------|------------|-------------|
| `setWidth(uint256)` | Public | _width | Set the width of the rectangle |
| `setHeight(uint256)` | Public | _height | Set the height of the rectangle |
| `getWidth()` | View | None | Get the current width |
| `getHeight()` | View | None | Get the current height |
| `getArea()` | Public | None | Calculate and return area (emits event) |
| `viewArea()` | View | None | Calculate and return area (no event) |

---

## 🔒 Security Features
- Validates width and height are greater than 0
- Uses Solidity 0.8+ (built-in overflow protection)
- Emits events for all state changes (WidthSet, HeightSet, AreaCalculated)
- Simple and easy to understand code
- View functions don't consume gas

---

## 📚 Additional Resources
- [Remix IDE Documentation](https://remix-ide.readthedocs.io/)
- [Solidity Documentation](https://docs.soliditylang.org/)
- [MetaMask Documentation](https://docs.metamask.io/)
- [Web3.js Documentation](https://web3js.readthedocs.io/)
- [Sepolia Testnet Explorer](https://sepolia.etherscan.io/)
- [GitHub Pages Documentation](https://docs.github.com/en/pages)

---

## 🎓 Assignment Submission Checklist
- [ ] Smart contract file created: `BC230504583.sol`
- [ ] Contract compiled successfully in Remix
- [ ] Contract deployed to Sepolia Test Network
- [ ] Contract address recorded and saved
- [ ] `BC230504583.html` created with correct contract address
- [ ] All buttons labeled with Student ID (Set Width 230504583, Set Height 230504583, Area 230504583)
- [ ] DApp tested locally and works correctly
- [ ] Files uploaded to GitHub repository
- [ ] GitHub Pages enabled and site is live
- [ ] GitHub Pages URL working and accessible
- [ ] Screenshots taken and added to Word document
- [ ] Word document renamed as `BC230504583.docx`
- [ ] Submit on MyLMS with GitHub Pages URL and Word document

---

## 📧 Support
If you encounter any issues:
1. Check the browser console (F12) for error messages
2. Verify you're on Sepolia network in MetaMask
3. Ensure you have enough test ETH for gas fees
4. Double-check CONTRACT_ADDRESS in `BC230504583.html`
5. Make sure the contract is properly deployed on Sepolia

---

## 📷 Screenshots for Documentation
Make sure to capture screenshots of:
1. ✅ Remix IDE with compiled contract
2. ✅ Deployment transaction in MetaMask
3. ✅ Deployed contract address in Remix
4. ✅ Your dApp interface (BC230504583.html)
5. ✅ Setting width transaction
6. ✅ Setting height transaction
7. ✅ Area calculation result
8. ✅ Sepolia Etherscan showing your transactions
9. ✅ GitHub repository with uploaded files
10. ✅ Live GitHub Pages site

---

**Good luck with your assignment! 🚀**
**Student ID: 230504583**
