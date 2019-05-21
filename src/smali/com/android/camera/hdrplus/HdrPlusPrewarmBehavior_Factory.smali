.class public final Lcom/android/camera/hdrplus/HdrPlusPrewarmBehavior_Factory;
.super Ljava/lang/Object;
.source "HdrPlusPrewarmBehavior_Factory.java"

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
.field private final gcamProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/googlex/gcam/Gcam;",
            ">;"
        }
    .end annotation
.end field

.field private final oneCameraFeatureConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/OneCameraFeatureConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final traceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/googlex/gcam/Gcam;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/OneCameraFeatureConfig;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/camera/hdrplus/HdrPlusPrewarmBehavior_Factory;->gcamProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lcom/android/camera/hdrplus/HdrPlusPrewarmBehavior_Factory;->oneCameraFeatureConfigProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lcom/android/camera/hdrplus/HdrPlusPrewarmBehavior_Factory;->traceProvider:Ljavax/inject/Provider;

    .line 28
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 10
    .line 1032
    new-instance v2, Lcom/android/camera/hdrplus/HdrPlusPrewarmBehavior;

    iget-object v3, p0, Lcom/android/camera/hdrplus/HdrPlusPrewarmBehavior_Factory;->gcamProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusPrewarmBehavior_Factory;->oneCameraFeatureConfigProvider:Ljavax/inject/Provider;

    .line 1033
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/OneCameraFeatureConfig;

    iget-object v1, p0, Lcom/android/camera/hdrplus/HdrPlusPrewarmBehavior_Factory;->traceProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/debug/trace/Trace;

    invoke-direct {v2, v3, v0, v1}, Lcom/android/camera/hdrplus/HdrPlusPrewarmBehavior;-><init>(Ljavax/inject/Provider;Lcom/android/camera/one/v2/OneCameraFeatureConfig;Lcom/android/camera/debug/trace/Trace;)V

    .line 10
    return-object v2
.end method
