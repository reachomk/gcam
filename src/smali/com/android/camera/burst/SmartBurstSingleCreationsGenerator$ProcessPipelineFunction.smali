.class final Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$ProcessPipelineFunction;
.super Ljava/lang/Object;
.source "SmartBurstSingleCreationsGenerator.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/concurrency/ResultFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessPipelineFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/concurrency/ResultFunction",
        "<",
        "Lcom/google/android/libraries/smartburst/pipeline/Pipeline",
        "<",
        "Lcom/google/android/libraries/smartburst/artifacts/ArtifactStack;",
        ">;",
        "Lcom/google/android/libraries/smartburst/artifacts/ArtifactStack;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$ProcessPipelineFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Lcom/google/android/libraries/smartburst/concurrency/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 213
    check-cast p1, Lcom/google/android/libraries/smartburst/pipeline/Pipeline;

    .line 1220
    invoke-interface {p1}, Lcom/google/android/libraries/smartburst/pipeline/Pipeline;->process()Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    .line 213
    return-object v0
.end method
