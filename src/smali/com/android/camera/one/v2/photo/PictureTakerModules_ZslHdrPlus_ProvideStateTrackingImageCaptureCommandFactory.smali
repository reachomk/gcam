.class public final Lcom/android/camera/one/v2/photo/PictureTakerModules_ZslHdrPlus_ProvideStateTrackingImageCaptureCommandFactory;
.super Ljava/lang/Object;
.source "PictureTakerModules_ZslHdrPlus_ProvideStateTrackingImageCaptureCommandFactory.java"

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
.field private final autoFlashZslHdrPlusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/commands/AutoFlashZslHdrPlusImageCaptureCommandFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final flashFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/commands/SingleFlashCommandFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final hdrPlusFeatureConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/hdrplus/HdrPlusFeatureConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final restrictedBurstFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/primitives/Booleans;",
            ">;"
        }
    .end annotation
.end field

.field private final restrictedBurstZslFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/commands/RestrictedBurstZslCommandFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/commands/AutoFlashZslHdrPlusImageCaptureCommandFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/commands/SingleFlashCommandFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/commands/RestrictedBurstZslCommandFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/primitives/Booleans;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/hdrplus/HdrPlusFeatureConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/PictureTakerModules_ZslHdrPlus_ProvideStateTrackingImageCaptureCommandFactory;->autoFlashZslHdrPlusProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/PictureTakerModules_ZslHdrPlus_ProvideStateTrackingImageCaptureCommandFactory;->flashFactoryProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/PictureTakerModules_ZslHdrPlus_ProvideStateTrackingImageCaptureCommandFactory;->restrictedBurstZslFactoryProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p4, p0, Lcom/android/camera/one/v2/photo/PictureTakerModules_ZslHdrPlus_ProvideStateTrackingImageCaptureCommandFactory;->restrictedBurstFactoryProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p5, p0, Lcom/android/camera/one/v2/photo/PictureTakerModules_ZslHdrPlus_ProvideStateTrackingImageCaptureCommandFactory;->hdrPlusFeatureConfigProvider:Ljavax/inject/Provider;

    .line 43
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/commands/AutoFlashZslHdrPlusImageCaptureCommandFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/commands/SingleFlashCommandFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/commands/RestrictedBurstZslCommandFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/primitives/Booleans;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/hdrplus/HdrPlusFeatureConfig;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lcom/android/camera/one/v2/photo/PictureTakerModules_ZslHdrPlus_ProvideStateTrackingImageCaptureCommandFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/one/v2/photo/PictureTakerModules_ZslHdrPlus_ProvideStateTrackingImageCaptureCommandFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 14
    .line 1047
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/PictureTakerModules_ZslHdrPlus_ProvideStateTrackingImageCaptureCommandFactory;->autoFlashZslHdrPlusProvider:Ljavax/inject/Provider;

    .line 1049
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/photo/commands/AutoFlashZslHdrPlusImageCaptureCommandFactory;

    iget-object v1, p0, Lcom/android/camera/one/v2/photo/PictureTakerModules_ZslHdrPlus_ProvideStateTrackingImageCaptureCommandFactory;->flashFactoryProvider:Ljavax/inject/Provider;

    .line 1050
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/photo/commands/SingleFlashCommandFactory;

    iget-object v2, p0, Lcom/android/camera/one/v2/photo/PictureTakerModules_ZslHdrPlus_ProvideStateTrackingImageCaptureCommandFactory;->restrictedBurstZslFactoryProvider:Ljavax/inject/Provider;

    .line 1051
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/photo/commands/RestrictedBurstZslCommandFactory;

    iget-object v3, p0, Lcom/android/camera/one/v2/photo/PictureTakerModules_ZslHdrPlus_ProvideStateTrackingImageCaptureCommandFactory;->restrictedBurstFactoryProvider:Ljavax/inject/Provider;

    .line 1052
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/primitives/Booleans;

    iget-object v4, p0, Lcom/android/camera/one/v2/photo/PictureTakerModules_ZslHdrPlus_ProvideStateTrackingImageCaptureCommandFactory;->hdrPlusFeatureConfigProvider:Ljavax/inject/Provider;

    .line 1053
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/hdrplus/HdrPlusFeatureConfig;

    .line 1048
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/advice/dirtylens/DirtyLensConfig;->provideStateTrackingImageCaptureCommand$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQOBECHPIUGBLEHNKCR31EDK5KSRC91I74K3CELPKIRB1CTIK6OBGEHQN4PA3DTMMQOBECH362ORKDTP7IEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TO6GRRKDSNM6RRDDLGMSP3J5T9MIRJ7DHIKCR31EDK46RRDDLGMSP26C5HN8RRIF4TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPFCDNMQRB1DPI76BQICLPN8SJ9CDQ6AP22ELP76T2QEDM46RRDDLGMSP26C5HN8RRIF4TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPFCDNMQRB1DPI76BQICLPN8SJ9CDQ6AP22ELP76T23DTMMQOBECH362ORKDTP7IEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR8CHP70R3LECNKGP3IA1M7ASQ6CLGN8TBICL1MURJ6D5JJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TO6GRRKDSNM6RRDDLGMSP3J5T9N8OBKCLA74OB3DDKMSPQ9DLGMEPA3C5O78TBICL1MURBDC5N68EO_(Lcom/android/camera/one/v2/photo/commands/AutoFlashZslHdrPlusImageCaptureCommandFactory;Lcom/android/camera/one/v2/photo/commands/SingleFlashCommandFactory;Lcom/android/camera/one/v2/photo/commands/RestrictedBurstZslCommandFactory;Lcom/google/common/primitives/Booleans;Lcom/android/camera/hdrplus/HdrPlusFeatureConfig;)Lcom/google/common/primitives/Floats;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1047
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/primitives/Floats;

    .line 14
    return-object v0
.end method
