package sequence;

public class sequence {
	
	public static void main(String[] args) {
		int array[]=new int[] {3, 10, 7, 9, 4, 11};
		int array2[]=new int[10];
		int array3[]=new int[10];
		int index1=0;
		int index2=1;
		int index1Counter=0;
		int index2Counter=1;
		int sequenceLength=0;
		int maxSequenceLength=0;
		
		
		while(index1Counter<array.length-1) {
			System.out.println(index1Counter);
			if(index2<array.length  && array[index1]<array[index2]) {
				
				if(sequenceLength==0) {
					array2[sequenceLength]=array[index1];
					sequenceLength++;
					array2[sequenceLength]=array[index2];
					sequenceLength++;
					index1=index2;
					index2++;
				}
				else {
					array2[sequenceLength]=array[index2];
					sequenceLength++;			
					index1=index2;
					index2++;
					
				}
				
			}
			else if(index2<array.length) {
				index2++;
				
				
			}
			
			if(index2==array.length) {
				
				if(sequenceLength>maxSequenceLength) {
					maxSequenceLength=sequenceLength;
					for(int i=0;i<maxSequenceLength;i++) {
						array3[i]=array2[i];						
					}					
				}
				sequenceLength=0;				
				index2Counter++;
				index2=index2Counter;
				index1=index1Counter;
				if(index2Counter==array.length) {
					index1Counter++;
					index2Counter=index1Counter+1;
					index1=index1Counter;
					index2=index2Counter;
					
					
				}				
																
			}				
		}
		
		
		for(int i=0;i<maxSequenceLength;i++) {		
			System.out.println(array3[i]);
		}		
	}
}
