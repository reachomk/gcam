.class final Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger$1;
.super Ljava/lang/Object;
.source "TuningDataLogger.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger;->processTuningData(Lcom/android/camera/one/v2/imagesaver/tuning/TuningData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger;

.field private synthetic val$tuningData:Lcom/android/camera/one/v2/imagesaver/tuning/TuningData;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger;Lcom/android/camera/one/v2/imagesaver/tuning/TuningData;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger$1;->this$0:Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger;

    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger$1;->val$tuningData:Lcom/android/camera/one/v2/imagesaver/tuning/TuningData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger$1;->this$0:Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger;->access$000(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unable to log capture metadata: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 41
    check-cast p1, Ljava/util/List;

    .line 1044
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/common/collect/Serialization;->get(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1046
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/google/common/collect/Serialization;->get(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1047
    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger$1;->this$0:Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger;

    invoke-static {v2}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger;->access$000(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger;)Lcom/android/camera/debug/Logger;

    move-result-object v2

    const-string v3, "Capture Metadata: "

    const-string v4, "Capture Metadata"

    .line 1049
    invoke-static {v4}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/String;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v4

    const-string v5, "Input"

    .line 1050
    invoke-virtual {v4, v5, v0}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v4, "Reprocessing"

    .line 1051
    invoke-virtual {v0, v4, v1}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "NPF"

    iget-object v4, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger$1;->val$tuningData:Lcom/android/camera/one/v2/imagesaver/tuning/TuningData;

    .line 1052
    invoke-interface {v4}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningData;->getNpfParameters()Lcom/google/common/base/Optional;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 1053
    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1047
    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 41
    return-void

    .line 1053
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
