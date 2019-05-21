.class final Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger$2;
.super Ljava/lang/Object;
.source "TuningDataLogger.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger;->metadataToLogString(Ljava/util/Collection;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
        ">;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger$2;->this$0:Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 67
    check-cast p1, Ljava/util/List;

    .line 1071
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1072
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    .line 1073
    iget-object v3, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger$2;->this$0:Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger;

    invoke-static {v3, v0}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger;->access$100(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1075
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    return-object v0
.end method
