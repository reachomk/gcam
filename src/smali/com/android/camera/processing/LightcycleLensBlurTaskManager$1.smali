.class final Lcom/android/camera/processing/LightcycleLensBlurTaskManager$1;
.super Ljava/lang/Object;
.source "LightcycleLensBlurTaskManager.java"

# interfaces
.implements Lcom/android/camera/memory/FeatureMemoryUsage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/processing/LightcycleLensBlurTaskManager;-><init>(Lcom/android/camera/memory/MemoryManager;Lcom/android/camera/memory/MaxNativeMemory;Lcom/android/camera/processing/ProcessingServiceManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/processing/LightcycleLensBlurTaskManager;


# direct methods
.method constructor <init>(Lcom/android/camera/processing/LightcycleLensBlurTaskManager;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager$1;->this$0:Lcom/android/camera/processing/LightcycleLensBlurTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAdditionalMemoryForShot()Lcom/google/android/apps/camera/async/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager$1;->this$0:Lcom/android/camera/processing/LightcycleLensBlurTaskManager;

    invoke-static {v0}, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->access$100(Lcom/android/camera/processing/LightcycleLensBlurTaskManager;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/camera/async/Observables;->of(Ljava/lang/Object;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentPeakMemory()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager$1;->this$0:Lcom/android/camera/processing/LightcycleLensBlurTaskManager;

    invoke-static {v0}, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->access$000(Lcom/android/camera/processing/LightcycleLensBlurTaskManager;)Lcom/google/android/apps/camera/async/ConcurrentState;

    move-result-object v0

    return-object v0
.end method

.method public final getFeature()Lcom/android/camera/memory/Feature;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/android/camera/memory/Feature;->LIGHTCYCLE_REFOCUS:Lcom/android/camera/memory/Feature;

    return-object v0
.end method
