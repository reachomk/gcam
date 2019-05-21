.class public final Lcom/android/camera/one/v2/photo/PictureTakerModules_Zsl_ProvideImageCaptureCommandFactory;
.super Ljava/lang/Object;
.source "PictureTakerModules_Zsl_ProvideImageCaptureCommandFactory.java"

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
.field private final autoFlashProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/collect/Sets;",
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
.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/collect/Sets;",
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
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/PictureTakerModules_Zsl_ProvideImageCaptureCommandFactory;->autoFlashProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/PictureTakerModules_Zsl_ProvideImageCaptureCommandFactory;->zslProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/PictureTakerModules_Zsl_ProvideImageCaptureCommandFactory;->noZslProvider:Ljavax/inject/Provider;

    .line 30
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/collect/Sets;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/android/camera/one/v2/photo/PictureTakerModules_Zsl_ProvideImageCaptureCommandFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/one/v2/photo/PictureTakerModules_Zsl_ProvideImageCaptureCommandFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 11
    .line 1034
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/PictureTakerModules_Zsl_ProvideImageCaptureCommandFactory;->autoFlashProvider:Ljavax/inject/Provider;

    .line 1036
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Sets;

    iget-object v1, p0, Lcom/android/camera/one/v2/photo/PictureTakerModules_Zsl_ProvideImageCaptureCommandFactory;->zslProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory;

    iget-object v2, p0, Lcom/android/camera/one/v2/photo/PictureTakerModules_Zsl_ProvideImageCaptureCommandFactory;->noZslProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory;

    .line 1035
    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->provideImageCaptureCommand$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQOBECHPIUGBLEHNKCR31EDK46RRDDLGMSP2JETKN8OR8CLP4COB3EHNN4U9R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NN0Q3FEHNIUORFDLMM2RJ4ECNL6QBECTM6AMJJDH1MURBDC5N68HJ1CDQ6USJP7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBR3DTMMQOBECHPIUKR9DPJMOPAEDT36OOBJD11MURBDC5N68HJ1CDQ6USJP7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BRGD1NN8RPF95MM2PR58DGN0T3LE9IK6RRDDLGMSP1R(Lcom/google/common/collect/Sets;Lcom/android/camera/one/v2/photo/commands/SingleZslCommandFactory;Lcom/android/camera/one/v2/photo/commands/SingleNoFlashCommandFactory;)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1034
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    .line 11
    return-object v0
.end method
