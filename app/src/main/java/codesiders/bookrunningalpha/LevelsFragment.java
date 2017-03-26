package codesiders.bookrunningalpha;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ListView;

public class LevelsFragment extends Fragment {
    ListView mLevelsList;
    ArrayAdapter<String> mLevelsAdapter;
    public LevelsFragment() {
        // Required empty public constructor
    }
    public static LevelsFragment newInstance(){
        LevelsFragment fragment = new LevelsFragment();
        return fragment;
    }
    @Override
    public void onCreate (Bundle savedInstanceState){
        super.onCreate(savedInstanceState);
        if (getArguments() !=null){
            //Gets parametros
        }
    }
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        View root = inflater.inflate(R.layout.fragment_levels, container, false);
        mLevelsList = (ListView) root.findViewById(R.id.levels_list);
        String[] leadsNames = {
                "Nivel 1",
                "Nivel 2",
                "Nivel 3",
                "Nivel 4",
                "Nivel 5"
        };

        mLevelsAdapter = new ArrayAdapter<>(
                getActivity(),
                android.R.layout.simple_list_item_1,
                leadsNames);
        mLevelsList.setAdapter(mLevelsAdapter);
        return root;
    }
}
