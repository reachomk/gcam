.class public final Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_ZslHdrPlusMeteringModule_ProvideMeteringDataFactory;
.super Ljava/lang/Object;
.source "SmartMeteringModules_ZslHdrPlusMeteringModule_ProvideMeteringDataFactory.java"

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
.field private final simpleMeteringResponseListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_ZslHdrPlusMeteringModule_ProvideMeteringDataFactory;->simpleMeteringResponseListenerProvider:Ljavax/inject/Provider;

    .line 19
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_ZslHdrPlusMeteringModule_ProvideMeteringDataFactory;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_ZslHdrPlusMeteringModule_ProvideMeteringDataFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 10
    .line 1023
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_ZslHdrPlusMeteringModule_ProvideMeteringDataFactory;->simpleMeteringResponseListenerProvider:Ljavax/inject/Provider;

    .line 1025
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener;

    .line 1252
    invoke-virtual {v0}, Lcom/android/camera/one/v2/smartmetering/SimpleMeteringResponseListener;->getBrightnessObservable()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$ZslHdrPlusMeteringModule$1;

    invoke-direct {v1}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules$ZslHdrPlusMeteringModule$1;-><init>()V

    .line 1251
    invoke-static {v0, v1}, Lcom/google/android/apps/camera/async/Observables;->transform(Lcom/google/android/apps/camera/async/Observable;Lcom/google/common/base/Function;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    .line 1024
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1023
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/Observable;

    .line 10
    return-object v0
.end method
