% This function is used to display 4 different plots in same window.

function displayResult(t,y,name)
    figure;

    % fit of target and precition features
    subplot(2,2,1);
    plot(y,'k');
    hold on;
    plot(t,'r:');
    legend('Output','Targets');
    title(name)

    % correlation
    subplot(2,2,2);
    plot(t,y,'ko');
    hold on;
    xmin=min(min(t),min(y));
    xmax=max(max(t),max(y));
    plot([xmin,xmax],[xmin,xmax],'b','LineWidth',2);
    R=corr(t',y');
    title(['correlation R=',num2str(R)]);

    %error
    subplot(2,2,3);
    e=t-y;
    plot(e,'b');
    legend('error');
    MSE=mean(e.^2);
    RMSE=sqrt(MSE);
    title(['MSE =',num2str(MSE),' , RMSE=',num2str(RMSE)]);

    % histogram
    subplot(2,2,4);
    histfit(e,50);
    eMean=mean(e);
    estd=std(e);
    title(['\mu=',num2str(eMean),' , \sigma=',num2str(estd)]);


end