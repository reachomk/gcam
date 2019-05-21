.class final Lcom/android/camera/processing/LightcycleLensBlurTaskManager$3;
.super Ljava/lang/Object;
.source "LightcycleLensBlurTaskManager.java"

# interfaces
.implements Lcom/google/android/apps/camera/util/Callback;


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
        "Lcom/google/android/apps/camera/util/Callback",
        "<",
        "Lcom/android/camera/processing/ProcessingTask;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/processing/LightcycleLensBlurTaskManager;


# direct methods
.method constructor <init>(Lcom/android/camera/processing/LightcycleLensBlurTaskManager;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager$3;->this$0:Lcom/android/camera/processing/LightcycleLensBlurTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onCallback(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 129
    .line 1132
    iget-object v0, p0, Lcom/android/camera/processing/LightcycleLensBlurTaskManager$3;->this$0:Lcom/android/camera/processing/LightcycleLensBlurTaskManager;

    invoke-static {v0}, Lcom/android/camera/processing/LightcycleLensBlurTaskManager;->access$600(Lcom/android/camera/processing/LightcycleLensBlurTaskManager;)V

    .line 129
    return-void
.end method
