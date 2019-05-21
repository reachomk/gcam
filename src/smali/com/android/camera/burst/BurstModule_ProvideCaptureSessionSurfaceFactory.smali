.class public final Lcom/android/camera/burst/BurstModule_ProvideCaptureSessionSurfaceFactory;
.super Ljava/lang/Object;
.source "BurstModule_ProvideCaptureSessionSurfaceFactory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# instance fields
.field private final burstFacadeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/burst/BurstFacade;",
            ">;"
        }
    .end annotation
.end field

.field private final characteristicsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ">;"
        }
    .end annotation
.end field

.field private final gservicesHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            ">;"
        }
    .end annotation
.end field

.field private final pictureConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/util/PictureConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/burst/BurstFacade;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/util/PictureConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/camera/burst/BurstModule_ProvideCaptureSessionSurfaceFactory;->burstFacadeProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p2, p0, Lcom/android/camera/burst/BurstModule_ProvideCaptureSessionSurfaceFactory;->characteristicsProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p3, p0, Lcom/android/camera/burst/BurstModule_ProvideCaptureSessionSurfaceFactory;->gservicesHelperProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p4, p0, Lcom/android/camera/burst/BurstModule_ProvideCaptureSessionSurfaceFactory;->pictureConfigurationProvider:Ljavax/inject/Provider;

    .line 37
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/burst/BurstFacade;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/util/PictureConfiguration;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lcom/android/camera/burst/BurstModule_ProvideCaptureSessionSurfaceFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/camera/burst/BurstModule_ProvideCaptureSessionSurfaceFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 13
    .line 1041
    iget-object v0, p0, Lcom/android/camera/burst/BurstModule_ProvideCaptureSessionSurfaceFactory;->burstFacadeProvider:Ljavax/inject/Provider;

    .line 1043
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/BurstFacade;

    iget-object v1, p0, Lcom/android/camera/burst/BurstModule_ProvideCaptureSessionSurfaceFactory;->characteristicsProvider:Ljavax/inject/Provider;

    .line 1044
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/OneCameraCharacteristics;

    iget-object v2, p0, Lcom/android/camera/burst/BurstModule_ProvideCaptureSessionSurfaceFactory;->gservicesHelperProvider:Ljavax/inject/Provider;

    .line 1045
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    iget-object v3, p0, Lcom/android/camera/burst/BurstModule_ProvideCaptureSessionSurfaceFactory;->pictureConfigurationProvider:Ljavax/inject/Provider;

    .line 1046
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/util/PictureConfiguration;

    .line 1042
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/burst/BurstFacadeStub;->provideCaptureSessionSurface$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ4COB3C5I6AEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUJRECL1M2RB5E9GK6Q31E9GM6T35E9KN6T39CDPJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIUORFDPJ6IPPF8TPMASJMD5HMASQ8CLM70PBI7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UTBKD5M2UK39CDQ7ASJ58DNMSPJ9CTQN4OBKD5NMSEP99HL62TJ15TQN8QBC5T9MAT1R(Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Lcom/android/camera/one/v2/util/PictureConfiguration;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1041
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 13
    return-object v0
.end method
