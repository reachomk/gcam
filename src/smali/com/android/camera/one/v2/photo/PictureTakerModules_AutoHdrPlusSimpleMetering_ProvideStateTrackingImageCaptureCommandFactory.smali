.class public final Lcom/android/camera/one/v2/photo/PictureTakerModules_AutoHdrPlusSimpleMetering_ProvideStateTrackingImageCaptureCommandFactory;
.super Ljava/lang/Object;
.source "PictureTakerModules_AutoHdrPlusSimpleMetering_ProvideStateTrackingImageCaptureCommandFactory.java"

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
.field private final autoFlashHdrPlusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/commands/AutoFlashHdrPlusImageCaptureCommandFactory;",
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
.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/commands/AutoFlashHdrPlusImageCaptureCommandFactory;",
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/PictureTakerModules_AutoHdrPlusSimpleMetering_ProvideStateTrackingImageCaptureCommandFactory;->autoFlashHdrPlusProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/PictureTakerModules_AutoHdrPlusSimpleMetering_ProvideStateTrackingImageCaptureCommandFactory;->flashFactoryProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/PictureTakerModules_AutoHdrPlusSimpleMetering_ProvideStateTrackingImageCaptureCommandFactory;->restrictedBurstZslFactoryProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p4, p0, Lcom/android/camera/one/v2/photo/PictureTakerModules_AutoHdrPlusSimpleMetering_ProvideStateTrackingImageCaptureCommandFactory;->restrictedBurstFactoryProvider:Ljavax/inject/Provider;

    .line 39
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/commands/AutoFlashHdrPlusImageCaptureCommandFactory;",
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
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lcom/android/camera/one/v2/photo/PictureTakerModules_AutoHdrPlusSimpleMetering_ProvideStateTrackingImageCaptureCommandFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/camera/one/v2/photo/PictureTakerModules_AutoHdrPlusSimpleMetering_ProvideStateTrackingImageCaptureCommandFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 13
    .line 1043
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/PictureTakerModules_AutoHdrPlusSimpleMetering_ProvideStateTrackingImageCaptureCommandFactory;->autoFlashHdrPlusProvider:Ljavax/inject/Provider;

    .line 1045
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/photo/commands/AutoFlashHdrPlusImageCaptureCommandFactory;

    iget-object v1, p0, Lcom/android/camera/one/v2/photo/PictureTakerModules_AutoHdrPlusSimpleMetering_ProvideStateTrackingImageCaptureCommandFactory;->flashFactoryProvider:Ljavax/inject/Provider;

    .line 1046
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/photo/commands/SingleFlashCommandFactory;

    iget-object v2, p0, Lcom/android/camera/one/v2/photo/PictureTakerModules_AutoHdrPlusSimpleMetering_ProvideStateTrackingImageCaptureCommandFactory;->restrictedBurstZslFactoryProvider:Ljavax/inject/Provider;

    .line 1047
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/photo/commands/RestrictedBurstZslCommandFactory;

    iget-object v3, p0, Lcom/android/camera/one/v2/photo/PictureTakerModules_AutoHdrPlusSimpleMetering_ProvideStateTrackingImageCaptureCommandFactory;->restrictedBurstFactoryProvider:Ljavax/inject/Provider;

    .line 1048
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/primitives/Booleans;

    .line 1044
    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->provideStateTrackingImageCaptureCommand$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQOBECHPIUGBLEHNKCR31EDK4GP3IA1M7ASQ9DLGMEPA3C5O78TBICL1MURBDC5N68HJ1CDQ6USJP7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQOBECHPIUKR9DPJMOPA6DHGN6Q23DTMMQOBECH362ORKDTP7IEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TO6GRRKDSNM6RRDDLGMSP3J5T96ASRKE9KM6T35CH17ASJJEHD76R23DTMMQOBECH362ORKDTP7IEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TO6GRRKDSNM6RRDDLGMSP3J5T96ASRKE9KM6T35CH17ASJJEH1MURBDC5N68HJ1CDQ6USJP7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPFCDNMQRB1DPI76BQJEHGN8PAKE9GM6QR9DPJKIRB1CTIK6OBGEHQN4PA3DTMMQOBECGTG____(Lcom/android/camera/one/v2/photo/commands/AutoFlashHdrPlusImageCaptureCommandFactory;Lcom/android/camera/one/v2/photo/commands/SingleFlashCommandFactory;Lcom/android/camera/one/v2/photo/commands/RestrictedBurstZslCommandFactory;Lcom/google/common/primitives/Booleans;)Lcom/google/common/primitives/Floats;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1043
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/primitives/Floats;

    .line 13
    return-object v0
.end method
