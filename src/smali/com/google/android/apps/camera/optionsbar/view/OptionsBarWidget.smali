.class public Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;
.super Landroid/widget/FrameLayout;
.source "OptionsBarWidget.java"

# interfaces
.implements Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;


# instance fields
.field private captureOptionsLayout:Landroid/view/View;

.field private closedLayout:Landroid/view/View;

.field private fadeInAnimation:Lcom/google/android/apps/camera/uiutils/OrientationChangeFadeIn;

.field private flashAuto:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

.field private flashButton:Landroid/widget/ImageButton;

.field private flashListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/google/android/apps/camera/optionsbar/view/OptionListener",
            "<",
            "Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;",
            ">;>;"
        }
    .end annotation
.end field

.field private flashOff:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

.field private flashOn:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

.field private fps30:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

.field private fps60:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

.field private fpsButton:Landroid/widget/ImageButton;

.field private fpsListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/google/android/apps/camera/optionsbar/view/OptionListener",
            "<",
            "Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$FpsOption;",
            ">;>;"
        }
    .end annotation
.end field

.field private gridLines3x3:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

.field private gridLines4x4:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

.field private gridLinesButton:Landroid/widget/ImageButton;

.field private gridLinesGoldenRatio:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

.field private gridLinesListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/google/android/apps/camera/optionsbar/view/OptionListener",
            "<",
            "Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;",
            ">;>;"
        }
    .end annotation
.end field

.field private gridLinesOff:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

.field private hdrAuto:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

.field private hdrButton:Landroid/widget/ImageButton;

.field private hdrListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/google/android/apps/camera/optionsbar/view/OptionListener",
            "<",
            "Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;",
            ">;>;"
        }
    .end annotation
.end field

.field private hdrOff:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

.field private hdrOn:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

.field private hdrPlusMode:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;

.field private isAutoFlashEnabled:Z

.field private leftButtonPlaceholder:Landroid/view/View;

.field private leftPlaceHolderMagnet:Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;

.field private openedLayout:Landroid/view/View;

.field private optionsBarExpansionStatechart:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;

.field private optionsBarStatechart:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;

.field private panoramaContainer:Landroid/view/ViewGroup;

.field private panoramaLayoutInitialized:Z

.field private panoramaListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/google/android/apps/camera/optionsbar/view/OptionListener",
            "<",
            "Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$PanoramaType;",
            ">;>;"
        }
    .end annotation
.end field

.field private timer10Sec:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

.field private timer3Sec:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

.field private timerButton:Landroid/widget/ImageButton;

.field private timerListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/google/android/apps/camera/optionsbar/view/OptionListener",
            "<",
            "Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$TimerOption;",
            ">;>;"
        }
    .end annotation
.end field

.field private timerOff:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

.field private visibleOptions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private wbAuto:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

.field private wbCloudy:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

.field private wbFluorescent:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

.field private wbIncandescent:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

.field private wbSunny:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

.field private whiteBalanceButton:Landroid/widget/ImageButton;

.field private whiteBalanceListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/google/android/apps/camera/optionsbar/view/OptionListener",
            "<",
            "Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$WhiteBalanceOption;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 110
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->initialize(Landroid/content/Context;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->initialize(Landroid/content/Context;)V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->optionsBarExpansionStatechart:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->isAutoFlashEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->flashButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;)Ljava/util/LinkedHashSet;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->panoramaListeners:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method private final getOptionButton(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;)Landroid/widget/ImageButton;
    .locals 4

    .prologue
    .line 390
    invoke-virtual {p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 405
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown capture option "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->timerButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->verifyNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 402
    :goto_0
    return-object v0

    .line 394
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->hdrButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->verifyNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    goto :goto_0

    .line 396
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->flashButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->verifyNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    goto :goto_0

    .line 398
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->fpsButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->verifyNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    goto :goto_0

    .line 400
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->whiteBalanceButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->verifyNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    goto :goto_0

    .line 402
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->gridLinesButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->verifyNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    goto :goto_0

    .line 390
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final initListener(Ljava/util/LinkedHashSet;ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/LinkedHashSet",
            "<+",
            "Lcom/google/android/apps/camera/optionsbar/view/OptionListener;",
            ">;ITT;)V"
        }
    .end annotation

    .prologue
    .line 256
    invoke-direct {p0, p2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget$1;-><init>(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;Ljava/util/LinkedHashSet;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    return-void
.end method

.method private final initOptionButton(Landroid/widget/ImageButton;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 275
    new-instance v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget$2;-><init>(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;Landroid/widget/ImageButton;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    return-void
.end method

.method private final initPanoramaButton(ILcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$PanoramaType;)V
    .locals 2

    .prologue
    .line 449
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 450
    new-instance v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget$5;

    invoke-direct {v1, p0, p2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget$5;-><init>(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$PanoramaType;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    return-void
.end method

.method private final initialize(Landroid/content/Context;)V
    .locals 10

    .prologue
    const v9, 0x7f11010e

    const v8, 0x7f11010d

    const v7, 0x7f110108

    const v6, 0x7f110107

    const v5, 0x7f110106

    .line 121
    .line 1374
    const-string v0, "layout_inflater"

    .line 1375
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1376
    const v1, 0x7f040055

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->panoramaLayoutInitialized:Z

    .line 123
    const v0, 0x7f110130

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->closedLayout:Landroid/view/View;

    .line 124
    const v0, 0x7f11013b

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->openedLayout:Landroid/view/View;

    .line 125
    const v0, 0x7f110139

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->panoramaContainer:Landroid/view/ViewGroup;

    .line 126
    const v0, 0x7f110132

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->captureOptionsLayout:Landroid/view/View;

    .line 127
    const v0, 0x7f110131

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->leftButtonPlaceholder:Landroid/view/View;

    .line 128
    const v0, 0x7f110133

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->timerButton:Landroid/widget/ImageButton;

    .line 129
    const v0, 0x7f110134

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->hdrButton:Landroid/widget/ImageButton;

    .line 130
    const v0, 0x7f110138

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->flashButton:Landroid/widget/ImageButton;

    .line 131
    const v0, 0x7f110135

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->fpsButton:Landroid/widget/ImageButton;

    .line 132
    const v0, 0x7f110137

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->whiteBalanceButton:Landroid/widget/ImageButton;

    .line 133
    const v0, 0x7f110136

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->gridLinesButton:Landroid/widget/ImageButton;

    .line 134
    invoke-direct {p0, v5}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->flashOff:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    .line 135
    invoke-direct {p0, v6}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->flashAuto:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    .line 136
    invoke-direct {p0, v7}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->flashOn:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    .line 137
    const v0, 0x7f110115

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->hdrOff:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    .line 138
    const v0, 0x7f110116

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->hdrAuto:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    .line 139
    const v0, 0x7f110117

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->hdrOn:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    .line 140
    const v0, 0x7f110171

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->timer3Sec:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    .line 141
    const v0, 0x7f110170

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->timerOff:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    .line 142
    const v0, 0x7f110172

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->timer10Sec:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    .line 143
    invoke-direct {p0, v8}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->fps30:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    .line 144
    invoke-direct {p0, v9}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->fps60:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    .line 145
    const v0, 0x7f110198

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->wbAuto:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    .line 146
    const v0, 0x7f110199

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->wbCloudy:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    .line 147
    const v0, 0x7f11019a

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->wbSunny:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    .line 148
    const v0, 0x7f11019c

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->wbIncandescent:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    .line 149
    const v0, 0x7f11019b

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->wbFluorescent:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    .line 150
    const v0, 0x7f110110

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->gridLinesOff:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    .line 151
    const v0, 0x7f110111

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->gridLines3x3:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    .line 152
    const v0, 0x7f110112

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->gridLines4x4:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    .line 153
    const v0, 0x7f110113

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->gridLinesGoldenRatio:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    .line 155
    new-instance v0, Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->leftButtonPlaceholder:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->leftPlaceHolderMagnet:Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;

    .line 156
    sget-object v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;->AUTO:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->hdrPlusMode:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;

    .line 159
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->visibleOptions:Ljava/util/HashSet;

    .line 160
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->timerListeners:Ljava/util/LinkedHashSet;

    .line 161
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->hdrListeners:Ljava/util/LinkedHashSet;

    .line 162
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->flashListeners:Ljava/util/LinkedHashSet;

    .line 163
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->panoramaListeners:Ljava/util/LinkedHashSet;

    .line 164
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->fpsListeners:Ljava/util/LinkedHashSet;

    .line 165
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->whiteBalanceListeners:Ljava/util/LinkedHashSet;

    .line 166
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->gridLinesListeners:Ljava/util/LinkedHashSet;

    .line 168
    new-instance v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->closedLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->openedLayout:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->leftPlaceHolderMagnet:Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;)V

    .line 171
    new-instance v1, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;

    iget-object v2, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->closedLayout:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->openedLayout:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->visibleOptions:Ljava/util/HashSet;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;-><init>(Landroid/view/View;Landroid/view/View;Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;Ljava/util/HashSet;)V

    iput-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->optionsBarExpansionStatechart:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;

    .line 174
    new-instance v0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->optionsBarExpansionStatechart:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;-><init>(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;)V

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->optionsBarStatechart:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;

    .line 175
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->optionsBarStatechart:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->leftPlaceHolderMagnet:Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;

    invoke-virtual {v0, p0, v1, p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;->initialize(Landroid/view/View;Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;Landroid/content/Context;)V

    .line 176
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->optionsBarStatechart:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;->enter()V

    .line 178
    new-instance v0, Lcom/google/android/apps/camera/uiutils/OrientationChangeFadeIn;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/uiutils/OrientationChangeFadeIn;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->fadeInAnimation:Lcom/google/android/apps/camera/uiutils/OrientationChangeFadeIn;

    .line 2201
    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->timerButton:Landroid/widget/ImageButton;

    const v0, 0x7f11016f

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->verifyNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->initOptionButton(Landroid/widget/ImageButton;Landroid/view/View;)V

    .line 2202
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->timerListeners:Ljava/util/LinkedHashSet;

    const v1, 0x7f110170

    sget-object v2, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$TimerOption;->ZERO_SECONDS:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$TimerOption;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->initListener(Ljava/util/LinkedHashSet;ILjava/lang/Object;)V

    .line 2203
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->timerListeners:Ljava/util/LinkedHashSet;

    const v1, 0x7f110171

    sget-object v2, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$TimerOption;->THREE_SECONDS:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$TimerOption;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->initListener(Ljava/util/LinkedHashSet;ILjava/lang/Object;)V

    .line 2204
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->timerListeners:Ljava/util/LinkedHashSet;

    const v1, 0x7f110172

    sget-object v2, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$TimerOption;->TEN_SECONDS:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$TimerOption;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->initListener(Ljava/util/LinkedHashSet;ILjava/lang/Object;)V

    .line 2208
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->hdrButton:Landroid/widget/ImageButton;

    const v1, 0x7f110114

    invoke-direct {p0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->initOptionButton(Landroid/widget/ImageButton;Landroid/view/View;)V

    .line 2209
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->hdrListeners:Ljava/util/LinkedHashSet;

    const v1, 0x7f110115

    sget-object v2, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;->OFF:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->initListener(Ljava/util/LinkedHashSet;ILjava/lang/Object;)V

    .line 2210
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->hdrListeners:Ljava/util/LinkedHashSet;

    const v1, 0x7f110116

    sget-object v2, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;->AUTO:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->initListener(Ljava/util/LinkedHashSet;ILjava/lang/Object;)V

    .line 2211
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->hdrListeners:Ljava/util/LinkedHashSet;

    const v1, 0x7f110117

    sget-object v2, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;->ON:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->initListener(Ljava/util/LinkedHashSet;ILjava/lang/Object;)V

    .line 2284
    const v0, 0x7f110105

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    .line 2285
    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->flashButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget$3;

    invoke-direct {v2, p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget$3;-><init>(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2216
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->flashListeners:Ljava/util/LinkedHashSet;

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;->OFF:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;

    invoke-direct {p0, v0, v5, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->initListener(Ljava/util/LinkedHashSet;ILjava/lang/Object;)V

    .line 2217
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->flashListeners:Ljava/util/LinkedHashSet;

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;->AUTO:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;

    invoke-direct {p0, v0, v6, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->initListener(Ljava/util/LinkedHashSet;ILjava/lang/Object;)V

    .line 2218
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->flashListeners:Ljava/util/LinkedHashSet;

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;->ON:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;

    invoke-direct {p0, v0, v7, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->initListener(Ljava/util/LinkedHashSet;ILjava/lang/Object;)V

    .line 3222
    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->fpsButton:Landroid/widget/ImageButton;

    const v0, 0x7f11010c

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->verifyNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->initOptionButton(Landroid/widget/ImageButton;Landroid/view/View;)V

    .line 3223
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->fpsListeners:Ljava/util/LinkedHashSet;

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$FpsOption;->FPS_30:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$FpsOption;

    invoke-direct {p0, v0, v8, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->initListener(Ljava/util/LinkedHashSet;ILjava/lang/Object;)V

    .line 3224
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->fpsListeners:Ljava/util/LinkedHashSet;

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$FpsOption;->FPS_60:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$FpsOption;

    invoke-direct {p0, v0, v9, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->initListener(Ljava/util/LinkedHashSet;ILjava/lang/Object;)V

    .line 3228
    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->whiteBalanceButton:Landroid/widget/ImageButton;

    const v0, 0x7f110197

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->verifyNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->initOptionButton(Landroid/widget/ImageButton;Landroid/view/View;)V

    .line 3229
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->whiteBalanceListeners:Ljava/util/LinkedHashSet;

    const v1, 0x7f110198

    sget-object v2, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$WhiteBalanceOption;->AUTO:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$WhiteBalanceOption;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->initListener(Ljava/util/LinkedHashSet;ILjava/lang/Object;)V

    .line 3230
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->whiteBalanceListeners:Ljava/util/LinkedHashSet;

    const v1, 0x7f110199

    sget-object v2, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$WhiteBalanceOption;->CLOUDY:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$WhiteBalanceOption;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->initListener(Ljava/util/LinkedHashSet;ILjava/lang/Object;)V

    .line 3231
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->whiteBalanceListeners:Ljava/util/LinkedHashSet;

    const v1, 0x7f11019a

    sget-object v2, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$WhiteBalanceOption;->SUNNY:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$WhiteBalanceOption;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->initListener(Ljava/util/LinkedHashSet;ILjava/lang/Object;)V

    .line 3232
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->whiteBalanceListeners:Ljava/util/LinkedHashSet;

    const v1, 0x7f11019c

    sget-object v2, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$WhiteBalanceOption;->INCANDESCENT:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$WhiteBalanceOption;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->initListener(Ljava/util/LinkedHashSet;ILjava/lang/Object;)V

    .line 3234
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->whiteBalanceListeners:Ljava/util/LinkedHashSet;

    const v1, 0x7f11019b

    sget-object v2, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$WhiteBalanceOption;->FLUORESCENT:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$WhiteBalanceOption;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->initListener(Ljava/util/LinkedHashSet;ILjava/lang/Object;)V

    .line 3239
    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->gridLinesButton:Landroid/widget/ImageButton;

    const v0, 0x7f11010f

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->verifyNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->initOptionButton(Landroid/widget/ImageButton;Landroid/view/View;)V

    .line 3240
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->gridLinesListeners:Ljava/util/LinkedHashSet;

    const v1, 0x7f110110

    sget-object v2, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;->GRID_NONE:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->initListener(Ljava/util/LinkedHashSet;ILjava/lang/Object;)V

    .line 3241
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->gridLinesListeners:Ljava/util/LinkedHashSet;

    const v1, 0x7f110111

    sget-object v2, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;->GRID_3x3:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->initListener(Ljava/util/LinkedHashSet;ILjava/lang/Object;)V

    .line 3242
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->gridLinesListeners:Ljava/util/LinkedHashSet;

    const v1, 0x7f110112

    sget-object v2, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;->GRID_4X4:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->initListener(Ljava/util/LinkedHashSet;ILjava/lang/Object;)V

    .line 3243
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->gridLinesListeners:Ljava/util/LinkedHashSet;

    const v1, 0x7f110113

    sget-object v2, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;->GRID_GOLDEN_RATIO:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->initListener(Ljava/util/LinkedHashSet;ILjava/lang/Object;)V

    .line 186
    return-void
.end method

.method private final lazyInitPanorama()V
    .locals 3

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->panoramaLayoutInitialized:Z

    if-eqz v0, :cond_0

    .line 446
    :goto_0
    return-void

    .line 439
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 440
    const v1, 0x7f040058

    iget-object v2, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->panoramaContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 441
    const v0, 0x7f11013d

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$PanoramaType;->HORIZONTAL:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$PanoramaType;

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->initPanoramaButton(ILcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$PanoramaType;)V

    .line 442
    const v0, 0x7f11013e

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$PanoramaType;->VERTICAL:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$PanoramaType;

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->initPanoramaButton(ILcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$PanoramaType;)V

    .line 443
    const v0, 0x7f11013f

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$PanoramaType;->WIDE:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$PanoramaType;

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->initPanoramaButton(ILcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$PanoramaType;)V

    .line 444
    const v0, 0x7f110140

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$PanoramaType;->FISHEYE:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$PanoramaType;

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->initPanoramaButton(ILcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$PanoramaType;)V

    .line 445
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->panoramaLayoutInitialized:Z

    goto :goto_0
.end method

.method private static varargs setNonSelectedExpandedOptions([Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 409
    array-length v2, p0

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 410
    invoke-virtual {v3, v1}, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;->setSelected(Z)V

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 412
    :cond_0
    return-void
.end method

.method private final verifyFindView(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 718
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->verifyNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final addFlashListener(Lcom/google/android/apps/camera/optionsbar/view/OptionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/optionsbar/view/OptionListener",
            "<",
            "Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 655
    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->flashListeners:Ljava/util/LinkedHashSet;

    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/OptionListener;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 656
    return-void
.end method

.method public final addFpsListener(Lcom/google/android/apps/camera/optionsbar/view/OptionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/optionsbar/view/OptionListener",
            "<",
            "Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$FpsOption;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 670
    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->fpsListeners:Ljava/util/LinkedHashSet;

    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/OptionListener;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 671
    return-void
.end method

.method public final addGridLinesListener(Lcom/google/android/apps/camera/optionsbar/view/OptionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/optionsbar/view/OptionListener",
            "<",
            "Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 680
    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->gridLinesListeners:Ljava/util/LinkedHashSet;

    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/OptionListener;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 681
    return-void
.end method

.method public final addHdrPlusListener(Lcom/google/android/apps/camera/optionsbar/view/OptionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/optionsbar/view/OptionListener",
            "<",
            "Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 660
    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->hdrListeners:Ljava/util/LinkedHashSet;

    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/OptionListener;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 661
    return-void
.end method

.method public final addPanoramaListener(Lcom/google/android/apps/camera/optionsbar/view/OptionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/optionsbar/view/OptionListener",
            "<",
            "Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$PanoramaType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 665
    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->panoramaListeners:Ljava/util/LinkedHashSet;

    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/OptionListener;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 666
    return-void
.end method

.method public final addTimerListener(Lcom/google/android/apps/camera/optionsbar/view/OptionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/optionsbar/view/OptionListener",
            "<",
            "Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$TimerOption;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 650
    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->timerListeners:Ljava/util/LinkedHashSet;

    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/OptionListener;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 651
    return-void
.end method

.method public final addWhiteBalanceListener(Lcom/google/android/apps/camera/optionsbar/view/OptionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/optionsbar/view/OptionListener",
            "<",
            "Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$WhiteBalanceOption;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 675
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->whiteBalanceListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 676
    return-void
.end method

.method public final closeOptions()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->optionsBarExpansionStatechart:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;->close()V

    .line 304
    return-void
.end method

.method public final disableAutoFlashOption()V
    .locals 1

    .prologue
    .line 645
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->isAutoFlashEnabled:Z

    .line 646
    return-void
.end method

.method public final enableAutoFlashOption()V
    .locals 1

    .prologue
    .line 640
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->isAutoFlashEnabled:Z

    .line 641
    return-void
.end method

.method public final fadeIn()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->optionsBarStatechart:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;->fadeIn()V

    .line 364
    return-void
.end method

.method public final fadeOut()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->optionsBarStatechart:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;->fadeOut()V

    .line 359
    return-void
.end method

.method public final grayFlashOption()V
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->flashButton:Landroid/widget/ImageButton;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageAlpha(I)V

    .line 478
    return-void
.end method

.method public final hide()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->optionsBarStatechart:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;->hide()V

    .line 349
    return-void
.end method

.method public final hideCaptureOption(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;)V
    .locals 2

    .prologue
    .line 472
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->getOptionButton(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;)Landroid/widget/ImageButton;

    move-result-object v0

    .line 5385
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5386
    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->visibleOptions:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 473
    return-void
.end method

.method public final isMenuClosed()Z
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->optionsBarExpansionStatechart:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;->isClosed()Z

    move-result v0

    return v0
.end method

.method public final magnetToLeftButtonPlaceHolder(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->leftPlaceHolderMagnet:Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->leftPlaceHolderMagnet:Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;->setIronView(Landroid/view/View;)V

    .line 714
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->leftPlaceHolderMagnet:Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;->update()V

    .line 715
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 190
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 191
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->fadeInAnimation:Lcom/google/android/apps/camera/uiutils/OrientationChangeFadeIn;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/uiutils/OrientationChangeFadeIn;->onAttachedToWindow()V

    .line 192
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 196
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 197
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->fadeInAnimation:Lcom/google/android/apps/camera/uiutils/OrientationChangeFadeIn;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/uiutils/OrientationChangeFadeIn;->onConfigurationChanged()V

    .line 198
    return-void
.end method

.method public final onTouchDownEventIntercepted(II)V
    .locals 4

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->optionsBarExpansionStatechart:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 3338
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3339
    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->openedLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3340
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 3341
    iget-object v2, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->openedLayout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3342
    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 326
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4312
    new-instance v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget$4;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget$4;-><init>(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final selectFlashOption(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 546
    invoke-virtual {p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 563
    :goto_0
    return-void

    .line 548
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->flashButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200de

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 549
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->flashOff:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;->setSelected(Z)V

    .line 550
    new-array v0, v4, [Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->flashAuto:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->flashOn:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->setNonSelectedExpandedOptions([Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;)V

    goto :goto_0

    .line 553
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->flashButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200dd

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 554
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->flashAuto:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;->setSelected(Z)V

    .line 555
    new-array v0, v4, [Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->flashOn:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->flashOff:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->setNonSelectedExpandedOptions([Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;)V

    goto :goto_0

    .line 558
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->flashButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200df

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 559
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->flashOn:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;->setSelected(Z)V

    .line 560
    new-array v0, v4, [Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->flashOff:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->flashAuto:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->setNonSelectedExpandedOptions([Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;)V

    goto :goto_0

    .line 546
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final selectFpsOption(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$FpsOption;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 567
    invoke-virtual {p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$FpsOption;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 579
    :goto_0
    return-void

    .line 569
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->fpsButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200e0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 570
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->fps30:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;->setSelected(Z)V

    .line 571
    new-array v0, v2, [Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->fps60:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->setNonSelectedExpandedOptions([Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;)V

    goto :goto_0

    .line 574
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->fpsButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200e1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 575
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->fps60:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;->setSelected(Z)V

    .line 576
    new-array v0, v2, [Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->fps30:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->setNonSelectedExpandedOptions([Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;)V

    goto :goto_0

    .line 567
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final selectGridLinesOption(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 614
    invoke-virtual {p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$GridLinesOption;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 636
    :goto_0
    return-void

    .line 616
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->gridLinesButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200e8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 617
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->gridLinesOff:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;->setSelected(Z)V

    .line 618
    new-array v0, v5, [Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->gridLines3x3:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->gridLines4x4:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->gridLinesGoldenRatio:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->setNonSelectedExpandedOptions([Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;)V

    goto :goto_0

    .line 621
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->gridLinesButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200e5

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 622
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->gridLines3x3:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;->setSelected(Z)V

    .line 623
    new-array v0, v5, [Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->gridLinesOff:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->gridLines4x4:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->gridLinesGoldenRatio:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->setNonSelectedExpandedOptions([Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;)V

    goto :goto_0

    .line 626
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->gridLinesButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200e6

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 627
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->gridLines4x4:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;->setSelected(Z)V

    .line 628
    new-array v0, v5, [Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->gridLinesOff:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->gridLines3x3:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->gridLinesGoldenRatio:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->setNonSelectedExpandedOptions([Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;)V

    goto :goto_0

    .line 631
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->gridLinesButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200e7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 632
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->gridLinesGoldenRatio:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;->setSelected(Z)V

    .line 633
    new-array v0, v5, [Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->gridLinesOff:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->gridLines3x3:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->gridLines4x4:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->setNonSelectedExpandedOptions([Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;)V

    goto :goto_0

    .line 614
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final selectHdrPlusOption(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 508
    invoke-virtual {p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 525
    :goto_0
    iput-object p1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->hdrPlusMode:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;

    .line 526
    return-void

    .line 510
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->hdrButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200f2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 511
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->hdrOff:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;->setSelected(Z)V

    .line 512
    new-array v0, v4, [Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->hdrAuto:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->hdrOn:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->setNonSelectedExpandedOptions([Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;)V

    goto :goto_0

    .line 515
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->hdrButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200f1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 516
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->hdrAuto:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;->setSelected(Z)V

    .line 517
    new-array v0, v4, [Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->hdrOn:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->hdrOff:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->setNonSelectedExpandedOptions([Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;)V

    goto :goto_0

    .line 520
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->hdrButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200f3

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 521
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->hdrOn:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;->setSelected(Z)V

    .line 522
    new-array v0, v4, [Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->hdrOff:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->hdrAuto:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->setNonSelectedExpandedOptions([Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;)V

    goto :goto_0

    .line 508
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final selectPanoramaType(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$PanoramaType;)V
    .locals 5

    .prologue
    .line 685
    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->lazyInitPanorama()V

    .line 686
    const v3, 0x7f02015c

    .line 687
    const v2, 0x7f02015d

    .line 688
    const v1, 0x7f02015e

    .line 689
    const v0, 0x7f02015b

    .line 690
    invoke-virtual {p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$PanoramaType;->ordinal()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    .line 704
    :goto_0
    const v0, 0x7f11013d

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 705
    const v0, 0x7f11013e

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 706
    const v0, 0x7f11013f

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 707
    const v0, 0x7f110140

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->verifyFindView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 708
    return-void

    .line 692
    :pswitch_0
    const v3, 0x7f020107

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    .line 693
    goto :goto_0

    .line 695
    :pswitch_1
    const v2, 0x7f02010a

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    .line 696
    goto :goto_0

    .line 698
    :pswitch_2
    const v1, 0x7f02010b

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    .line 699
    goto :goto_0

    .line 701
    :pswitch_3
    const v0, 0x7f020106

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 690
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final selectTimerOption(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$TimerOption;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 487
    invoke-virtual {p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$TimerOption;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 504
    :goto_0
    return-void

    .line 489
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->timerButton:Landroid/widget/ImageButton;

    const v1, 0x7f020129

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 490
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->timerOff:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;->setSelected(Z)V

    .line 491
    new-array v0, v4, [Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->timer3Sec:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->timer10Sec:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->setNonSelectedExpandedOptions([Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;)V

    goto :goto_0

    .line 494
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->timerButton:Landroid/widget/ImageButton;

    const v1, 0x7f020128

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 495
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->timer3Sec:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;->setSelected(Z)V

    .line 496
    new-array v0, v4, [Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->timerOff:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->timer10Sec:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->setNonSelectedExpandedOptions([Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;)V

    goto :goto_0

    .line 499
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->timer10Sec:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;->setSelected(Z)V

    .line 500
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->timerButton:Landroid/widget/ImageButton;

    const v1, 0x7f020127

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 501
    new-array v0, v4, [Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->timerOff:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->timer3Sec:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->setNonSelectedExpandedOptions([Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;)V

    goto :goto_0

    .line 487
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final selectWhiteBalanceOption(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$WhiteBalanceOption;)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 583
    invoke-virtual {p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$WhiteBalanceOption;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 610
    :goto_0
    return-void

    .line 585
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->whiteBalanceButton:Landroid/widget/ImageButton;

    const v1, 0x7f020133

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 586
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->wbAuto:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;->setSelected(Z)V

    .line 587
    new-array v0, v6, [Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->wbCloudy:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->wbSunny:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->wbIncandescent:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->wbFluorescent:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->setNonSelectedExpandedOptions([Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;)V

    goto :goto_0

    .line 590
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->whiteBalanceButton:Landroid/widget/ImageButton;

    const v1, 0x7f020134

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 591
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->wbCloudy:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;->setSelected(Z)V

    .line 592
    new-array v0, v6, [Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->wbAuto:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->wbSunny:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->wbIncandescent:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->wbFluorescent:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->setNonSelectedExpandedOptions([Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;)V

    goto :goto_0

    .line 595
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->whiteBalanceButton:Landroid/widget/ImageButton;

    const v1, 0x7f020137

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 596
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->wbSunny:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;->setSelected(Z)V

    .line 597
    new-array v0, v6, [Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->wbAuto:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->wbCloudy:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->wbIncandescent:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->wbFluorescent:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->setNonSelectedExpandedOptions([Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;)V

    goto :goto_0

    .line 600
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->whiteBalanceButton:Landroid/widget/ImageButton;

    const v1, 0x7f020136

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 601
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->wbIncandescent:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;->setSelected(Z)V

    .line 602
    new-array v0, v6, [Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->wbAuto:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->wbCloudy:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->wbSunny:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->wbFluorescent:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->setNonSelectedExpandedOptions([Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;)V

    goto/16 :goto_0

    .line 605
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->whiteBalanceButton:Landroid/widget/ImageButton;

    const v1, 0x7f020135

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 606
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->wbFluorescent:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;->setSelected(Z)V

    .line 607
    new-array v0, v6, [Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->wbAuto:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->wbCloudy:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->wbSunny:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->wbIncandescent:Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->setNonSelectedExpandedOptions([Lcom/google/android/apps/camera/optionsbar/view/ExpandedOption;)V

    goto/16 :goto_0

    .line 583
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final setHdrPlusHint(Z)V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->hdrPlusMode:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;->AUTO:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;

    if-eq v0, v1, :cond_0

    .line 542
    :goto_0
    return-void

    .line 537
    :cond_0
    if-eqz p1, :cond_1

    .line 538
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->hdrButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200f4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->hdrButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200f1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public final setMode$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIURRGEHKMURJJC9GN4BRMD5INEBQFE1Q6IRREED162SILD4I4QRR4CKTIILG_(I)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 416
    add-int/lit8 v0, p1, -0x1

    packed-switch v0, :pswitch_data_0

    .line 424
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->optionsBarExpansionStatechart:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;->exit()V

    .line 425
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->optionsBarExpansionStatechart:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;->enter()V

    .line 426
    return-void

    .line 4429
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->lazyInitPanorama()V

    .line 4430
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->captureOptionsLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4431
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->panoramaContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 4461
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->panoramaContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4462
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->captureOptionsLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 416
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final show()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->optionsBarStatechart:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;->show()V

    .line 354
    return-void
.end method

.method public final showCaptureOption(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;)V
    .locals 2

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->getOptionButton(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;)Landroid/widget/ImageButton;

    move-result-object v0

    .line 5380
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5381
    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->visibleOptions:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 468
    return-void
.end method

.method public final unGrayFlashOption()V
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarWidget;->flashButton:Landroid/widget/ImageButton;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageAlpha(I)V

    .line 483
    return-void
.end method
