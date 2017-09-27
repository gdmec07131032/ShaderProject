Shader "MyShader/shader01"{//这个制定shader的名字，不要求和文件名字一样
	
	Properties{
		//属性
		_Color("Color",Color)=(1,1,1,1) //float4
		_Vector("Vector",Vector)=(1,2,3,4) //float4
		_Int("Int",Int)=34234 //float
		_Float("Float",Float)=4.5 //float
		_Range("Range",Range(1,11))=6 //float
		_2D("Texture",2D) = "white"{} //sampler2D
		_Cube("Cube",Cube)="white"{} //samplerCube 
		_3D("Texture",3D)="black"{} //sampler3D
	}
		//SubShader可以有很多个，显卡运行效果的时候，
		//从第一个subshader开始，如果第一个subshader里面的效果
		//可以实现，那么就使用第一个subshader，
		//如果显卡发现这个subshader里面它实现不了，
		//它会自动运行下一个subshader
		SubShader{
		//至少有一个pass
		Pass{
		//在这里编写shader代码 HLSLPROGRAM
		CGPROGRAM
		//使用CG语言编写shader代码
		float4 _Color; //float half fixed
		//fixed4
		float3 t1;  //half3 fixed3
		float2 t2;  //half2 fixed2
		float t3;
		float4 _Vector;
		float _Int;
		float _Float;
		float _Range;
		sampler2D _2D;
		samplerCube _Cube;
		sampler3D _3D;
		//float 32位来存储
		//half  16  -6万 ~ +6万
		//fixed 11  -2 到 +2
				ENDCG
			}
	}

	Fallback "VertexLit"
}