.class Lcom/android/camera/processing/imagebackend/TaskImageContainerFactory;
.super Ljava/lang/Object;
.source "TaskImageContainerFactory.java"


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final imageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

.field private final indexCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final luckyShotCallback:Lcom/google/android/apps/camera/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/util/Callback",
            "<",
            "Lcom/android/camera/processing/imagebackend/TaskLuckyShot;",
            ">;"
        }
    .end annotation
.end field

.field private luckyShotImageFilter:Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;

.field private final luckyShotMetaDataBuilder:Lcom/android/camera/stats/LuckyShotMetaDataBuilder;

.field private final luckyShotMetric:Lcom/android/camera/processing/imagebackend/LuckyShotMetric;


# direct methods
.method public constructor <init>(Lcom/android/camera/processing/imagebackend/ImageTaskManager;Ljava/util/concurrent/Executor;Lcom/google/android/apps/camera/util/Callback;Lcom/android/camera/processing/imagebackend/LuckyShotMetric;Lcom/android/camera/stats/LuckyShotMetaDataBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/processing/imagebackend/ImageTaskManager;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/apps/camera/util/Callback",
            "<",
            "Lcom/android/camera/processing/imagebackend/TaskLuckyShot;",
            ">;",
            "Lcom/android/camera/processing/imagebackend/LuckyShotMetric;",
            "Lcom/android/camera/stats/LuckyShotMetaDataBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2048
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2028
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainerFactory;->indexCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2049
    iput-object p1, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainerFactory;->imageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    .line 2050
    iput-object p2, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainerFactory;->executor:Ljava/util/concurrent/Executor;

    .line 2051
    iput-object p3, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainerFactory;->luckyShotCallback:Lcom/google/android/apps/camera/util/Callback;

    .line 2052
    iput-object p4, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainerFactory;->luckyShotMetric:Lcom/android/camera/processing/imagebackend/LuckyShotMetric;

    .line 2053
    iput-object p5, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainerFactory;->luckyShotMetaDataBuilder:Lcom/android/camera/stats/LuckyShotMetaDataBuilder;

    .line 2054
    return-void
.end method


# virtual methods
.method public build(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Lcom/android/camera/session/SessionBase;)Lcom/android/camera/processing/imagebackend/TaskImageContainer;
    .locals 10

    .prologue
    .line 1069
    new-instance v0, Lcom/android/camera/processing/imagebackend/TaskLuckyShot;

    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainerFactory;->executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainerFactory;->imageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    iget-object v4, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainerFactory;->luckyShotImageFilter:Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;

    iget-object v6, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainerFactory;->luckyShotCallback:Lcom/google/android/apps/camera/util/Callback;

    iget-object v7, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainerFactory;->luckyShotMetric:Lcom/android/camera/processing/imagebackend/LuckyShotMetric;

    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainerFactory;->indexCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1077
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v8

    iget-object v9, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainerFactory;->luckyShotMetaDataBuilder:Lcom/android/camera/stats/LuckyShotMetaDataBuilder;

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/processing/imagebackend/TaskLuckyShot;-><init>(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;Lcom/android/camera/session/SessionBase;Lcom/google/android/apps/camera/util/Callback;Lcom/android/camera/processing/imagebackend/LuckyShotMetric;ILcom/android/camera/stats/LuckyShotMetaDataBuilder;)V

    .line 1069
    return-object v0
.end method

.method public setLuckyShotImageFilter(Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;)V
    .locals 0

    .prologue
    .line 2064
    iput-object p1, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainerFactory;->luckyShotImageFilter:Lcom/android/camera/processing/imagebackend/LuckyShotImageFilter;

    .line 2065
    return-void
.end method
