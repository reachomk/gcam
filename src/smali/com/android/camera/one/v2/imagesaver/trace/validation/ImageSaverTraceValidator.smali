.class final Lcom/android/camera/one/v2/imagesaver/trace/validation/ImageSaverTraceValidator;
.super Ljava/lang/Object;
.source "ImageSaverTraceValidator.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTraceProcessor;


# instance fields
.field private final buildSource:Lcom/android/camera/util/app/AppProperties$BuildSource;

.field private final log:Lcom/android/camera/debug/Logger;

.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;

.field private final validFlows:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/trace/validation/FlowValidator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/camera/debug/Logger$Factory;Ljava/util/Set;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/util/app/AppProperties$BuildSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/debug/Logger$Factory;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/trace/validation/FlowValidator;",
            ">;",
            "Lcom/google/android/apps/camera/async/MainThread;",
            "Lcom/android/camera/util/app/AppProperties$BuildSource;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "ImageSaverValidator"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ImageSaverTraceValidator;->log:Lcom/android/camera/debug/Logger;

    .line 42
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ImageSaverTraceValidator;->validFlows:Ljava/util/Set;

    .line 43
    iput-object p3, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ImageSaverTraceValidator;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 44
    iput-object p4, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ImageSaverTraceValidator;->buildSource:Lcom/android/camera/util/app/AppProperties$BuildSource;

    .line 45
    return-void
.end method


# virtual methods
.method public final processTrace(Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;)V
    .locals 4

    .prologue
    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ImageSaverTraceValidator;->validFlows:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagesaver/trace/validation/FlowValidator;

    .line 53
    invoke-interface {v0, p1}, Lcom/android/camera/one/v2/imagesaver/trace/validation/FlowValidator;->validate(Lcom/android/camera/one/v2/imagesaver/trace/ImageSaverTrace;)Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult;

    move-result-object v0

    .line 54
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ImageSaverTraceValidator;->log:Lcom/android/camera/debug/Logger;

    const-string v2, "Valid image created:"

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationResult;->getFlowName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 77
    :cond_1
    :goto_1
    return-void

    .line 56
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_3
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ImageSaverTraceValidator;->log:Lcom/android/camera/debug/Logger;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x33

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "ImageSaverTrace does not match any valid strategy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ImageSaverTraceValidator;->log:Lcom/android/camera/debug/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Trace = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ImageSaverTraceValidator;->buildSource:Lcom/android/camera/util/app/AppProperties$BuildSource;

    sget-object v1, Lcom/android/camera/util/app/AppProperties$BuildSource;->RELEASE:Lcom/android/camera/util/app/AppProperties$BuildSource;

    if-eq v0, v1, :cond_1

    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Image Saver Trace did not match any valid ImageSaverStrategy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ImageSaverTraceValidator;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    new-instance v2, Lcom/android/camera/one/v2/imagesaver/trace/validation/ImageSaverTraceValidator$1;

    invoke-direct {v2, v0}, Lcom/android/camera/one/v2/imagesaver/trace/validation/ImageSaverTraceValidator$1;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1
.end method
