.class final Lcom/android/camera/app/CameraActivityControllerImpl$3;
.super Ljava/lang/Object;
.source "CameraActivityControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/CameraActivityControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/app/CameraActivityControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/app/CameraActivityControllerImpl;)V
    .locals 0

    .prologue
    .line 725
    iput-object p1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$3;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$3;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$500(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/memory/MemoryQuery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/memory/MemoryQuery;->queryMemory()Ljava/util/HashMap;

    move-result-object v0

    .line 729
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v1

    const-string v2, "launch"

    .line 730
    invoke-virtual {v1, v0, v2}, Lcom/android/camera/stats/UsageStatistics;->reportMemoryConsumed(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 731
    return-void
.end method
