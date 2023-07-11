function Solution(A){
    let maximummultipleOfFour = 0
    for (let i=0; i<A.length; i++) {
        if (A[i] % 4 === 0 && A[i] > maximummultipleOfFour) {
            maximummultipleOfFour = A[i];
    }
}
 return maximummultipleOfFour 
}

let solution  =Solution([40, 50, 60, 70, 80, 90])

console.log(solution)