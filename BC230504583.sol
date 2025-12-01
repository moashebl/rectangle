// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title BC230504583
 * @dev Smart Contract for Rectangle Area Calculation
 * @author Student ID: 230504583
 */
contract BC230504583 {
    // State variables to store rectangle dimensions
    uint256 private width;
    uint256 private height;
    
    // Events to log state changes
    event WidthSet(uint256 newWidth, address indexed setter);
    event HeightSet(uint256 newHeight, address indexed setter);
    event AreaCalculated(uint256 area, address indexed calculator);
    
    /**
     * @dev Constructor to initialize the contract
     */
    constructor() {
        width = 0;
        height = 0;
    }
    
    /**
     * @dev Set the width of the rectangle
     * @param _width The new width value
     */
    function setWidth(uint256 _width) public {
        require(_width > 0, "Width must be greater than 0");
        width = _width;
        emit WidthSet(_width, msg.sender);
    }
    
    /**
     * @dev Set the height of the rectangle
     * @param _height The new height value
     */
    function setHeight(uint256 _height) public {
        require(_height > 0, "Height must be greater than 0");
        height = _height;
        emit HeightSet(_height, msg.sender);
    }
    
    /**
     * @dev Get the current width
     * @return The current width value
     */
    function getWidth() public view returns (uint256) {
        return width;
    }
    
    /**
     * @dev Get the current height
     * @return The current height value
     */
    function getHeight() public view returns (uint256) {
        return height;
    }
    
    /**
     * @dev Calculate and return the area of the rectangle
     * @return The calculated area (width * height)
     */
    function getArea() public returns (uint256) {
        uint256 area = width * height;
        emit AreaCalculated(area, msg.sender);
        return area;
    }
    
    /**
     * @dev View function to calculate area without emitting event
     * @return The calculated area (width * height)
     */
    function viewArea() public view returns (uint256) {
        return width * height;
    }
}
