.class public final Lcom/android/camera/module/capture/CaptureModeStartupModules_CaptureModeStartupModule_ProvideStartupContextFactory;
.super Ljava/lang/Object;
.source "CaptureModeStartupModules_CaptureModeStartupModule_ProvideStartupContextFactory.java"

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
.field private final selectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/activity/config/StartupContextSelector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/activity/config/StartupContextSelector;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModeStartupModules_CaptureModeStartupModule_ProvideStartupContextFactory;->selectorProvider:Ljavax/inject/Provider;

    .line 18
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 9
    .line 1022
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModeStartupModules_CaptureModeStartupModule_ProvideStartupContextFactory;->selectorProvider:Ljavax/inject/Provider;

    .line 1024
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/activity/config/StartupContextSelector;

    .line 1023
    invoke-static {v0}, Lcom/android/camera/util/activity/ActivityUtilModule;->provideStartupContext$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGM6T39EPKN8U9FCDNMSPJ9CSNL6T31E9Q7AS23DTN78PBOEH9MAR35CDQ6USHR55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGM6T39EPKN8U9FCDNMSPJ9CSNL6T31E9Q7AS23DTN78PBOEH9MAR35CDQ6USH4ADQ62SJKELO46RREEHINGT1R(Lcom/android/camera/activity/config/StartupContextSelector;)Lcom/android/camera/advice/AdviceManagerImpl;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1022
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/advice/AdviceManagerImpl;

    .line 9
    return-object v0
.end method
