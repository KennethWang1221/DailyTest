package com.test1;

public class test1 {
    public static void main(String[] args) {
        //遍历数组，冒泡排序，二分查找
        int[] arr;
        arr=new int[]{9,8,3,7,5,2,89,37,27,15,21,42,69,57,4};

        System.out.print("（排序前）数组：");
        printArray(arr);

        BubbleSort(arr);

        System.out.print("(排序后)数组：");
        printArray(arr);

        //使用二分查找法查找指定数字
        int myNum=89;

        int start=0;
        int end=arr.length-1;


        while(true) {
            int middle=(start+end)/2;
            if(myNum>arr[middle]) {
                start=middle+1;
            }else if(myNum<arr[middle]) {
                end=middle-1;
            }else {
                System.out.print("找到此数"+myNum+"  位置是："+(middle+1));
                break;
            }
            if(start>end) {
                System.out.print("查无此数");
                break;

            }
        }

    }
    //定义一个打印数组的方法
    public static void printArray(int[] arr) {
        for(int i=0;i<arr.length;i++) {
            System.out.print(arr[i]+" ");
        }
        System.out.print("\n");
    }

    //定义一个冒泡排序的方法
    public static void BubbleSort(int[] arr) {
        for(int i=0;i<arr.length-1;i++) {
            for(int j=0;j<arr.length-i-1;j++) {
                int temp;
                if(arr[j]>arr[j+1]) {
                    temp=arr[j];
                    arr[j]=arr[j+1];
                    arr[j+1]=temp;
                }
            }
            System.out.print("第"+i+"轮排序后的结果为：");
            printArray(arr);
        }
    }
}

















