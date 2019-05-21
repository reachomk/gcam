.class public Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;
.super Ljava/lang/Object;
.source "TimeFormatter.java"

# interfaces
.implements Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUi;"
    }
.end annotation


# instance fields
.field private final controlsStatechart:Lcom/google/android/apps/camera/videoplayer/controller/ControlsStatechart;

.field private controlsView:Landroid/view/View;

.field private currentTimeView:Landroid/widget/TextView;

.field private final decorView:Landroid/view/View;

.field private final fadeAnimationMillis:I

.field private pauseButton:Landroid/widget/ImageButton;

.field private playButton:Landroid/widget/ImageButton;

.field private final progressBarStatechart:Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart;

.field private progressSeekBar:Landroid/widget/SeekBar;

.field private totalTimeView:Landroid/widget/TextView;

.field private final videoPlayStatechart:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;

.field private final videoPlayerView:Landroid/view/View;

.field private videoView:Landroid/widget/VideoView;

.field private videoViewHolder:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;Lcom/google/android/apps/camera/videoplayer/controller/ControlsStatechart;Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1045
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1046
    iput-object p1, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->videoPlayStatechart:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;

    .line 1047
    iput-object p2, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->controlsStatechart:Lcom/google/android/apps/camera/videoplayer/controller/ControlsStatechart;

    .line 1048
    iput-object p3, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->progressBarStatechart:Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart;

    .line 1049
    iput-object p4, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->videoPlayerView:Landroid/view/View;

    .line 1050
    iput-object p5, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->decorView:Landroid/view/View;

    .line 1052
    invoke-virtual {p4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->fadeAnimationMillis:I

    .line 1053
    return-void
.end method

.method static synthetic access$000$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUTJ9CHIMUS3CC5SMASHFEPKMATPFAPKM8PBFA1M62UB5E9AMIIBDE1M3MAACCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TR6IP35DTO6OOBPCLP2UORFDPQ74RRCDHIN4BQMD5I6ARQGDHGNIKRKC5Q6AOR8C5P78EO_(Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;)Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;
    .locals 1

    .prologue
    .line 2022
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->videoPlayStatechart:Lcom/google/android/apps/camera/videoplayer/controller/VideoPlayStatechart;

    return-object v0
.end method

.method static synthetic access$100$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUTJ9CHIMUS3CC5SMASHFEPKMATPFAPKM8PBFA1M62UB5E9AMIIBDE1M3MAACCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TR6IP35DTO6OOBPCLP2UORFDPQ74RRCDHIN4BQ3DTN78SJFDHPL6T31EHIM6Q31E9Q3M___(Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;)Lcom/google/android/apps/camera/videoplayer/controller/ControlsStatechart;
    .locals 1

    .prologue
    .line 3022
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->controlsStatechart:Lcom/google/android/apps/camera/videoplayer/controller/ControlsStatechart;

    return-object v0
.end method

.method static synthetic access$200$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUTJ9CHIMUS3CC5SMASHFEPKMATPFAPKM8PBFA1M62UB5E9AMIIBDE1M3MAACCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TR6IP35DTO6OOBPCLP2UORFDPQ74RRCDHIN4BQGE9NMESJ5EDPK4OBIADQ62T35CDK62SJK7C______(Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;)Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart;
    .locals 1

    .prologue
    .line 4022
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->progressBarStatechart:Lcom/google/android/apps/camera/videoplayer/controller/ProgressBarStatechart;

    return-object v0
.end method

.method static synthetic access$300$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUTJ9CHIMUS3CC5SMASHFEPKMATPFAPKM8PBFA1M62UB5E9AMIIBDE1M3MAACC5N68SJFD5I2UTJ9CLRIULJ9CLRJM___(Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;)Landroid/view/View;
    .locals 1

    .prologue
    .line 5022
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->controlsView:Landroid/view/View;

    return-object v0
.end method

.method public static formatDuration(J)Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/16 v6, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 18
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    rem-long/2addr v0, v2

    .line 19
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    rem-long/2addr v2, v4

    .line 20
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, p0, p1}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v4

    .line 22
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 23
    const-string v6, "%1d:%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v9

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 25
    :goto_0
    return-object v0

    :cond_0
    const-string v4, "%1d:%02d"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initControlsView()V
    .locals 2

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->videoPlayerView:Landroid/view/View;

    const v1, 0x7f110188

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->controlsView:Landroid/view/View;

    .line 1114
    return-void
.end method

.method private initPauseButton()V
    .locals 2

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->videoPlayerView:Landroid/view/View;

    const v1, 0x7f110189

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->pauseButton:Landroid/widget/ImageButton;

    .line 1079
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->pauseButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUiImpl$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUiImpl$2;-><init>(Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1085
    return-void
.end method

.method private initPlayButton()V
    .locals 2

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->videoPlayerView:Landroid/view/View;

    const v1, 0x7f11018e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->playButton:Landroid/widget/ImageButton;

    .line 1068
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->playButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUiImpl$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUiImpl$1;-><init>(Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1075
    return-void
.end method

.method private initProgressSeekBar()V
    .locals 2

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->videoPlayerView:Landroid/view/View;

    const v1, 0x7f11018c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->progressSeekBar:Landroid/widget/SeekBar;

    .line 1119
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->progressSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUiImpl$5;

    invoke-direct {v1, p0}, Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUiImpl$5;-><init>(Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1139
    return-void
.end method

.method private initVideoView()V
    .locals 2

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->videoPlayerView:Landroid/view/View;

    const v1, 0x7f110103

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->videoView:Landroid/widget/VideoView;

    .line 1099
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->videoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUiImpl$4;

    invoke-direct {v1, p0}, Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUiImpl$4;-><init>(Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1109
    return-void
.end method

.method private initVideoViewHolder()V
    .locals 2

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->videoPlayerView:Landroid/view/View;

    const v1, 0x7f110187

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->videoViewHolder:Landroid/view/View;

    .line 1089
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->videoViewHolder:Landroid/view/View;

    new-instance v1, Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUiImpl$3;

    invoke-direct {v1, p0}, Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUiImpl$3;-><init>(Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1095
    return-void
.end method


# virtual methods
.method public getVideoView()Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->videoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method public hideControls()V
    .locals 4

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->controlsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->fadeAnimationMillis:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUiImpl$6;

    invoke-direct {v1, p0}, Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUiImpl$6;-><init>(Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1161
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1163
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->decorView:Landroid/view/View;

    const/16 v1, 0xf06

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1171
    return-void
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 1056
    invoke-direct {p0}, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->initVideoViewHolder()V

    .line 1057
    invoke-direct {p0}, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->initVideoView()V

    .line 1058
    invoke-direct {p0}, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->initPauseButton()V

    .line 1059
    invoke-direct {p0}, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->initPlayButton()V

    .line 1060
    invoke-direct {p0}, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->initControlsView()V

    .line 1061
    invoke-direct {p0}, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->initProgressSeekBar()V

    .line 1062
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->videoPlayerView:Landroid/view/View;

    const v1, 0x7f11018d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->totalTimeView:Landroid/widget/TextView;

    .line 1063
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->videoPlayerView:Landroid/view/View;

    const v1, 0x7f11018b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->currentTimeView:Landroid/widget/TextView;

    .line 1064
    return-void
.end method

.method public setDuration(I)V
    .locals 4

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->totalTimeView:Landroid/widget/TextView;

    int-to-long v2, p1

    invoke-static {v2, v3}, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1192
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->progressSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1193
    return-void
.end method

.method public setPaused()V
    .locals 2

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->pauseButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1144
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->playButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1145
    return-void
.end method

.method public setPlaying()V
    .locals 2

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->playButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1150
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->pauseButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1151
    return-void
.end method

.method public setPosition(I)V
    .locals 4

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->currentTimeView:Landroid/widget/TextView;

    int-to-long v2, p1

    invoke-static {v2, v3}, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1198
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->progressSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1199
    return-void
.end method

.method public showControls()V
    .locals 4

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->controlsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->fadeAnimationMillis:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUiImpl$7;

    invoke-direct {v1, p0}, Lcom/google/android/apps/camera/videoplayer/view/VideoPlayerUiImpl$7;-><init>(Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1181
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1183
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/view/TimeFormatter;->decorView:Landroid/view/View;

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1187
    return-void
.end method
