.class final Lcom/android/camera/processing/LightcycleLensBlurTaskManager$2;
.super Ljava/lang/Object;
.source "LightcycleLensBlurTaskManager.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/processing/LightcycleLensBlurTaskManager;-><init>(Lcom/android/camera/memory/MemoryManager;Lcom/android/camera/memory/MaxNativeMemory;Lcom/android/camera/processing/ProcessingServiceManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Updatable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/processing/LightcycleLensBlurTaskManager;


# direct methods
.method constructor <init>(Lcom/android/camera/processing/LightcycleLensBlurTaskManager;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager$2;->this$0:Lcom/android/camera/processing/LightcycleLensBlurTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic update(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 115
    .line 1118
    iget-object v0, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager$2;->this$0:Lcom/android/camera/processing/LightcycleLensBlurTaskManager;

    invoke-static {v0}, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->access$200(Lcom/android/camera/processing/LightcycleLensBlurTaskManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1119
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager$2;->this$0:Lcom/android/camera/processing/LightcycleLensBlurTaskManager;

    invoke-static {v0}, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->access$300(Lcom/android/camera/processing/LightcycleLensBlurTaskManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager$2;->this$0:Lcom/android/camera/processing/LightcycleLensBlurTaskManager;

    invoke-static {v0}, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->access$400(Lcom/android/camera/processing/LightcycleLensBlurTaskManager;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager$2;->this$0:Lcom/android/camera/processing/LightcycleLensBlurTaskManager;

    invoke-static {v0}, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->access$500(Lcom/android/camera/processing/LightcycleLensBlurTaskManager;)V

    .line 1122
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
