using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Collections.Specialized;

public class CityGenerationWithPerlinSeed : MonoBehaviour
{
    public GameObject[] buildings;
    public int mapWidth = 20;
    public int mapHeight = 20;
    int buildingFootprint = 20;

    // Start is called before the first frame update
    void Start()
    {
        float seed = UnityEngine.Random.Range(0,100);
        for(int h = 0; h < mapHeight; h++)
        {
            for(int w = 0; w < mapWidth; w++)
            {
                int perlinValue = (int) (Mathf.PerlinNoise(w/10.0f + seed, h/10.0f + seed) * 10);
                Vector3 pos = new Vector3(w * buildingFootprint, 0, h * buildingFootprint);
                if(perlinValue < 2){
                    Instantiate(buildings[0], pos, Quaternion.identity);
                }
                else if (perlinValue < 4){
                    Instantiate(buildings[1], pos, Quaternion.identity);
                }
                else if (perlinValue < 6){
                    Instantiate(buildings[2], pos, Quaternion.identity);
                }
                else if (perlinValue < 8){
                    Instantiate(buildings[3], pos, Quaternion.identity);
                }
                else if (perlinValue < 10){
                    Instantiate(buildings[4], pos, Quaternion.identity);
                }
            }
        }
    }
}
