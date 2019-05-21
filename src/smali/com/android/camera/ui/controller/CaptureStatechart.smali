.class public Lcom/android/camera/ui/controller/CaptureStatechart;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "CaptureStatechart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/controller/CaptureStatechart$SlowMoState;,
        Lcom/android/camera/ui/controller/CaptureStatechart$LensBlurState;,
        Lcom/android/camera/ui/controller/CaptureStatechart$PanoramaState;,
        Lcom/android/camera/ui/controller/CaptureStatechart$PhotoSphereState;,
        Lcom/android/camera/ui/controller/CaptureStatechart$PhotoVideoState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

.field private gridLinesUi:Lcom/google/android/apps/camera/gridlines/view/GridLinesUi;

.field private optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

.field private previewOverlay:Lcom/android/camera/ui/PreviewOverlay;

.field private rotationAnimation:I

.field private toyboxDrawerController:Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;

.field private window:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "CaptureStatechart"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/controller/CaptureStatechart;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>(F)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/controller/CaptureStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/ui/controller/CaptureStatechart;->optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/controller/CaptureStatechart;)Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/ui/controller/CaptureStatechart;->toyboxDrawerController:Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/controller/CaptureStatechart;)Lcom/android/camera/ui/PreviewOverlay;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/ui/controller/CaptureStatechart;->previewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    return-object v0
.end method

.method static synthetic access$300$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR3DTN78SJFDHM6ASHF8DGN0T3LE9IL6T31EHIM6Q31E9Q3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TGNAT3FCPNM6TBJ5T0MAGRFDPQ74RRCDHIN4EO_(Lcom/android/camera/ui/controller/CaptureStatechart;)Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/ui/controller/CaptureStatechart;->aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/controller/CaptureStatechart;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/camera/ui/controller/CaptureStatechart;->enableGridLines()V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/camera/ui/controller/CaptureStatechart;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/controller/CaptureStatechart;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/camera/ui/controller/CaptureStatechart;->disableGridLines()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/ui/controller/CaptureStatechart;I)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/camera/ui/controller/CaptureStatechart;->setRotationAnimation(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/ui/controller/CaptureStatechart;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/android/camera/ui/controller/CaptureStatechart;->rotationAnimation:I

    return v0
.end method

.method private final disableGridLines()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/camera/ui/controller/CaptureStatechart;->optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;->GRID_LINES:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->hideCaptureOption(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;)V

    .line 181
    iget-object v0, p0, Lcom/android/camera/ui/controller/CaptureStatechart;->gridLinesUi:Lcom/google/android/apps/camera/gridlines/view/GridLinesUi;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi;->setVisibility(I)V

    .line 182
    return-void
.end method

.method private final enableGridLines()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/camera/ui/controller/CaptureStatechart;->optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;->GRID_LINES:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->showCaptureOption(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;)V

    .line 176
    iget-object v0, p0, Lcom/android/camera/ui/controller/CaptureStatechart;->gridLinesUi:Lcom/google/android/apps/camera/gridlines/view/GridLinesUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi;->setVisibility(I)V

    .line 177
    return-void
.end method

.method private final setRotationAnimation(I)V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/camera/ui/controller/CaptureStatechart;->window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 186
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 187
    iget-object v1, p0, Lcom/android/camera/ui/controller/CaptureStatechart;->window:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 188
    return-void
.end method


# virtual methods
.method public initialize$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIURRGEHKMURJJC9GN4BRMD5INEBQFE1Q6IRREED162SILD4TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAQ9FEHNNIOJFF1MMARJL5TA6UUB2DTS48SJ1ETIN4GRFDPQ74RRCDHIN4EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRLD4NL0SJ5EPKMATQFEPIN4R31F4TKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR7E9KM8R39DPIN6BRMD5INEBQ7E9KM8J39DPIN6LB97D662RJ4E9NMIP1FEPKMATPFATKMSP3FESTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR1ELQ6UPJFCDQN6BQ1CL1MURJKE9NMOR35E8TIILG_(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;Lcom/android/camera/ui/PreviewOverlay;Lcom/google/android/apps/camera/gridlines/view/GridLinesUi;Landroid/view/Window;Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;)V
    .locals 1

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/camera/ui/controller/CaptureStatechart;->optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    .line 45
    iput-object p2, p0, Lcom/android/camera/ui/controller/CaptureStatechart;->toyboxDrawerController:Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;

    .line 46
    iput-object p3, p0, Lcom/android/camera/ui/controller/CaptureStatechart;->previewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    .line 47
    iput-object p4, p0, Lcom/android/camera/ui/controller/CaptureStatechart;->gridLinesUi:Lcom/google/android/apps/camera/gridlines/view/GridLinesUi;

    .line 48
    iput-object p5, p0, Lcom/android/camera/ui/controller/CaptureStatechart;->window:Landroid/view/Window;

    .line 49
    iput-object p6, p0, Lcom/android/camera/ui/controller/CaptureStatechart;->aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    .line 50
    invoke-virtual {p5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    iput v0, p0, Lcom/android/camera/ui/controller/CaptureStatechart;->rotationAnimation:I

    .line 51
    return-void
.end method
