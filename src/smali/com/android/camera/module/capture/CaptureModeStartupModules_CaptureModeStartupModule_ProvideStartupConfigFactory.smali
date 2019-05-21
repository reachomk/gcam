.class public final Lcom/android/camera/module/capture/CaptureModeStartupModules_CaptureModeStartupModule_ProvideStartupConfigFactory;
.super Ljava/lang/Object;
.source "CaptureModeStartupModules_CaptureModeStartupModule_ProvideStartupConfigFactory.java"

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
.field private final configBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/capture/CaptureModuleConfigBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final startupContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/advice/AdviceManagerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/capture/CaptureModuleConfigBuilder;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/advice/AdviceManagerImpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModeStartupModules_CaptureModeStartupModule_ProvideStartupConfigFactory;->configBuilderProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p2, p0, Lcom/android/camera/module/capture/CaptureModeStartupModules_CaptureModeStartupModule_ProvideStartupConfigFactory;->startupContextProvider:Ljavax/inject/Provider;

    .line 24
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 10
    .line 1028
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeStartupModules_CaptureModeStartupModule_ProvideStartupConfigFactory;->configBuilderProvider:Ljavax/inject/Provider;

    .line 1030
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/capture/CaptureModuleConfigBuilder;

    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureModeStartupModules_CaptureModeStartupModule_ProvideStartupConfigFactory;->startupContextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/advice/AdviceManagerImpl;

    .line 1029
    invoke-static {v0, v1}, Lcom/android/camera/util/activity/ActivityUtilModule;->provideStartupConfig$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUOR1E1Q7ASJ55T1M2S3KELP6AJBFCHQMOPA3DTN6CQB789QMIR34CLP3MJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOB3EHKNCQBKF4NM6RRECPKMEBQJEHGN4T3LE11MURJKCLS78KR5DHIM6T3FE8I56T31E9Q7AS23DTN78PBOEGTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURBFCHQMOP9F9TN6AJBFCHQMOPA3DTN6CQB77C______(Lcom/android/camera/module/capture/CaptureModuleConfigBuilder;Lcom/android/camera/advice/AdviceManagerImpl;)Lcom/android/camera/module/OneModuleConfig;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1028
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/OneModuleConfig;

    .line 10
    return-object v0
.end method
