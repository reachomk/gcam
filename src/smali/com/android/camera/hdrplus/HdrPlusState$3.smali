.class final Lcom/android/camera/hdrplus/HdrPlusState$3;
.super Lcom/google/googlex/gcam/BackgroundAeResultsCallback;
.source "HdrPlusState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/hdrplus/HdrPlusState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/hdrplus/HdrPlusState;


# direct methods
.method constructor <init>(Lcom/android/camera/hdrplus/HdrPlusState;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/camera/hdrplus/HdrPlusState$3;->this$0:Lcom/android/camera/hdrplus/HdrPlusState;

    invoke-direct {p0}, Lcom/google/googlex/gcam/BackgroundAeResultsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final Run(Lcom/google/googlex/gcam/AeResults;)V
    .locals 2

    .prologue
    .line 126
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/googlex/gcam/AeResults;->getValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-static {p1}, Lcom/google/googlex/gcam/GcamModule;->CopyAeResults(Lcom/google/googlex/gcam/AeResults;)Lcom/google/googlex/gcam/AeResults;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/android/camera/hdrplus/HdrPlusState$3;->this$0:Lcom/android/camera/hdrplus/HdrPlusState;

    iget-object v1, v1, Lcom/android/camera/hdrplus/HdrPlusState;->latestAeResults:Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 137
    :goto_0
    return-void

    .line 132
    :cond_0
    if-nez p1, :cond_1

    .line 133
    invoke-static {}, Lcom/android/camera/hdrplus/HdrPlusState;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeResults from GcamWrapper is null!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_1
    invoke-static {}, Lcom/android/camera/hdrplus/HdrPlusState;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeResults from GcamWrapper is invalid."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
