.class final Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$68;
.super Ljava/lang/Object;
.source "PostProcessComponents.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/integration/Instantiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;->configureCommon(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Ljava/util/concurrent/Executor;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/integration/Instantiator",
        "<",
        "Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutor;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$postProcessExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 1588
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$68;->val$postProcessExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1588
    .line 2591
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$68;->val$postProcessExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper;->wrap(Ljava/util/concurrent/Executor;)Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper;

    move-result-object v0

    .line 1588
    return-object v0
.end method
