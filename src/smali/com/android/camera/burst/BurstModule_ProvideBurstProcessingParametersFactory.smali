.class public final Lcom/android/camera/burst/BurstModule_ProvideBurstProcessingParametersFactory;
.super Ljava/lang/Object;
.source "BurstModule_ProvideBurstProcessingParametersFactory.java"

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
.field private final burstCaptureCommandFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/data/FilmstripDataModule;",
            ">;"
        }
    .end annotation
.end field

.field private final executorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/command/CameraCommandExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final fatalErrorHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/error/FatalErrorHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final frameSaverFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/memory/MemoryModule;",
            ">;"
        }
    .end annotation
.end field

.field private final imageProcessorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;",
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
            "Lcom/android/camera/one/v2/command/CameraCommandExecutor;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/data/FilmstripDataModule;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/memory/MemoryModule;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/error/FatalErrorHandler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/camera/burst/BurstModule_ProvideBurstProcessingParametersFactory;->executorProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p2, p0, Lcom/android/camera/burst/BurstModule_ProvideBurstProcessingParametersFactory;->burstCaptureCommandFactoryProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p3, p0, Lcom/android/camera/burst/BurstModule_ProvideBurstProcessingParametersFactory;->imageProcessorProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p4, p0, Lcom/android/camera/burst/BurstModule_ProvideBurstProcessingParametersFactory;->frameSaverFactoryProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p5, p0, Lcom/android/camera/burst/BurstModule_ProvideBurstProcessingParametersFactory;->fatalErrorHandlerProvider:Ljavax/inject/Provider;

    .line 40
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/command/CameraCommandExecutor;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/data/FilmstripDataModule;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/memory/MemoryModule;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/error/FatalErrorHandler;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lcom/android/camera/burst/BurstModule_ProvideBurstProcessingParametersFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/burst/BurstModule_ProvideBurstProcessingParametersFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 11
    .line 1044
    iget-object v0, p0, Lcom/android/camera/burst/BurstModule_ProvideBurstProcessingParametersFactory;->executorProvider:Ljavax/inject/Provider;

    .line 1046
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/command/CameraCommandExecutor;

    iget-object v1, p0, Lcom/android/camera/burst/BurstModule_ProvideBurstProcessingParametersFactory;->burstCaptureCommandFactoryProvider:Ljavax/inject/Provider;

    .line 1047
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/FilmstripDataModule;

    iget-object v2, p0, Lcom/android/camera/burst/BurstModule_ProvideBurstProcessingParametersFactory;->imageProcessorProvider:Ljavax/inject/Provider;

    .line 1048
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;

    iget-object v3, p0, Lcom/android/camera/burst/BurstModule_ProvideBurstProcessingParametersFactory;->frameSaverFactoryProvider:Ljavax/inject/Provider;

    .line 1049
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/memory/MemoryModule;

    iget-object v4, p0, Lcom/android/camera/burst/BurstModule_ProvideBurstProcessingParametersFactory;->fatalErrorHandlerProvider:Ljavax/inject/Provider;

    .line 1050
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/error/FatalErrorHandler;

    .line 1045
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/burst/BurstFacadeStub;->provideBurstProcessingParameters$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UORFDLMM2RJ45T1M2RB5E9GK6RRDDLGMSP25F1IM6TBKDTP3MJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOJLE9PN8BQ2ELP76T23C5O78TBICL1MURBDC5N68HJ1CDQ6USJP7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BR2ELP76T1F95MM2PR589GM6QR5DPI44OBJCLI44TBIEDQ50SJFCDIN6SRFE8TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM4TBIEDQ2UHJIC5MMAKR1EPIN4HJ1CDQ6USJP7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TIN4SJFE8NKCOBKC5M4ASJIDTP4GOBECHM6ASHR55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ4COB3C5I6A922ELP76T2GE9NM6PBJEDKMSPQGC5P62RB5EHIN4SPR(Lcom/android/camera/one/v2/command/CameraCommandExecutor;Lcom/android/camera/data/FilmstripDataModule;Lcom/android/camera/one/v2/imagesaver/burst/BurstImageProcessor;Lcom/android/camera/memory/MemoryModule;Lcom/android/camera/error/FatalErrorHandler;)Lcom/android/camera/hdrplus/HdrPlusModule;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1044
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/hdrplus/HdrPlusModule;

    .line 11
    return-object v0
.end method
