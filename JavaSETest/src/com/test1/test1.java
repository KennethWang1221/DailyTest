package com.test1;

//遍历数组，排序
public class test1 {
    public static void main(String[] args) {
        int[] arr;
        arr=new int[] {2,5,1,62,3,55,4};

        System.out.print("数组中的数值是：");

        for(int i=0;i<arr.length;i++) {
            System.out.print(" "+arr[i]+" ");
        }

        System.out.print("\n");
        //排序
        int max;
        max=getMax(arr);
        System.out.print("数组中最大的值是："+max);

    }

    public static int getMax(int[] arr) {
        int max;
        max=arr[0];
        for(int i=0;i<arr.length;i++) {
            if(arr[i]>max) {
                max=arr[i];
            }
        }
        return max;
    }
}
