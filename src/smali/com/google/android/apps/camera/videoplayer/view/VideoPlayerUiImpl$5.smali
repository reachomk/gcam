.class final Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUiImpl$5;
.super Ljava/lang/Object;
.source "VideoPlayerUiImpl.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private synthetic this$0$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNCQB4CLNN0R31F5IN4BRMD5INEBQMD5I6ARQGDHGNIPBIALKKIRBGDGTG____:Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUiImpl$5;->this$0$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNCQB4CLNN0R31F5IN4BRMD5INEBQMD5I6ARQGDHGNIPBIALKKIRBGDGTG____:Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .prologue
    .line 122
    if-nez p3, :cond_0

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUiImpl$5;->this$0$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNCQB4CLNN0R31F5IN4BRMD5INEBQMD5I6ARQGDHGNIPBIALKKIRBGDGTG____:Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->access$200$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUTJ9CHIMUS3CC5SMASHFEPKMATPFAPKM8PBFA1M62UB5E9AMIIBDE1M3MAACCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TR6IP35DTO6OOBPCLP2UORFDPQ74RRCDHIN4BQGE9NMESJ5EDPK4OBIADQ62T35CDK62SJK7C______(Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;)Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart;->seekTo(I)V

    goto :goto_0
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUiImpl$5;->this$0$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNCQB4CLNN0R31F5IN4BRMD5INEBQMD5I6ARQGDHGNIPBIALKKIRBGDGTG____:Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->access$200$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUTJ9CHIMUS3CC5SMASHFEPKMATPFAPKM8PBFA1M62UB5E9AMIIBDE1M3MAACCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TR6IP35DTO6OOBPCLP2UORFDPQ74RRCDHIN4BQGE9NMESJ5EDPK4OBIADQ62T35CDK62SJK7C______(Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;)Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->onScrubbingStarted()V

    .line 131
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUiImpl$5;->this$0$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNCQB4CLNN0R31F5IN4BRMD5INEBQMD5I6ARQGDHGNIPBIALKKIRBGDGTG____:Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;

    invoke-static {v0}, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->access$200$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUTJ9CHIMUS3CC5SMASHFEPKMATPFAPKM8PBFA1M62UB5E9AMIIBDE1M3MAACCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TR6IP35DTO6OOBPCLP2UORFDPQ74RRCDHIN4BQGE9NMESJ5EDPK4OBIADQ62T35CDK62SJK7C______(Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;)Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->onScrubbingDone()V

    .line 136
    return-void
.end method
