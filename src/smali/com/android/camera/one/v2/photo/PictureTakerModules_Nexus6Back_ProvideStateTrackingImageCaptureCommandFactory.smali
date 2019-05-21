.class public final Lcom/android/camera/one/v2/photo/PictureTakerModules_Nexus6Back_ProvideStateTrackingImageCaptureCommandFactory;
.super Ljava/lang/Object;
.source "PictureTakerModules_Nexus6Back_ProvideStateTrackingImageCaptureCommandFactory.java"

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
.field private final autoCmdProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/commands/AutoFlashHdrPlusImageCaptureCommandFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final flashOnCmdProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/commands/SingleFlashCommandFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final noZslProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final zslProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/PictureTakerModules_Nexus6Back_ProvideStateTrackingImageCaptureCommandFactory;->autoCmdProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/PictureTakerModules_Nexus6Back_ProvideStateTrackingImageCaptureCommandFactory;->flashOnCmdProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/PictureTakerModules_Nexus6Back_ProvideStateTrackingImageCaptureCommandFactory;->zslProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p4, p0, Lcom/android/camera/one/v2/photo/PictureTakerModules_Nexus6Back_ProvideStateTrackingImageCaptureCommandFactory;->noZslProvider:Ljavax/inject/Provider;

    .line 37
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 13
    .line 1041
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/PictureTakerModules_Nexus6Back_ProvideStateTrackingImageCaptureCommandFactory;->autoCmdProvider:Ljavax/inject/Provider;

    .line 1043
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/photo/commands/AutoFlashHdrPlusImageCaptureCommandFactory;

    iget-object v1, p0, Lcom/android/camera/one/v2/photo/PictureTakerModules_Nexus6Back_ProvideStateTrackingImageCaptureCommandFactory;->flashOnCmdProvider:Ljavax/inject/Provider;

    .line 1044
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/photo/commands/SingleFlashCommandFactory;

    iget-object v2, p0, Lcom/android/camera/one/v2/photo/PictureTakerModules_Nexus6Back_ProvideStateTrackingImageCaptureCommandFactory;->zslProvider:Ljavax/inject/Provider;

    .line 1045
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory;

    iget-object v3, p0, Lcom/android/camera/one/v2/photo/PictureTakerModules_Nexus6Back_ProvideStateTrackingImageCaptureCommandFactory;->noZslProvider:Ljavax/inject/Provider;

    .line 1046
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory;

    .line 1042
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/activity/main/CameraActivityModule;->provideStateTrackingImageCaptureCommand$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQOBECHPIUGBLEHNKCR31EDK4GP3IA1M7ASQ9DLGMEPA3C5O78TBICL1MURBDC5N68HJ1CDQ6USJP7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQOBECHPIUKR9DPJMOPA6DHGN6Q23DTMMQOBECH362ORKDTP7IEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TO6GRRKDSNM6RRDDLGMSP3J5T9MIRJ7DHILKSRC8DNMQRB1DPI4COB3EHNN4U9R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUORFDLMM2RJ4ECNL6QBECTM6AJJF8PM62SR88DNMQRB1DPI4COB3EHNN4U9R55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQOBECHPIUKRKC5Q6AL3IC5HMMQBECT4MQOB7CL1M2S3KELP6AGRFDLMM2RJ47C______(Lcom/android/camera/one/v2/photo/commands/AutoFlashHdrPlusImageCaptureCommandFactory;Lcom/android/camera/one/v2/photo/commands/SingleFlashCommandFactory;Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory;Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory;)Lcom/google/common/primitives/Floats;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1041
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/primitives/Floats;

    .line 13
    return-object v0
.end method
