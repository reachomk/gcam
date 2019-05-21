.class final Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;
.super Ljava/lang/Object;
.source "ImageBackend.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/processing/imagebackend/ImageBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskDoneWrapper"
.end annotation


# instance fields
.field private final imageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

.field private final tupleImageShadowTask:Lcom/android/camera/processing/imagebackend/ImageBackend$TupleDependentImagesShadowTask;

.field private final wrappedTask:Lcom/android/camera/processing/imagebackend/TaskImageContainer;


# direct methods
.method public constructor <init>(Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/processing/imagebackend/ImageBackend$TupleDependentImagesShadowTask;Lcom/android/camera/processing/imagebackend/TaskImageContainer;)V
    .locals 0

    .prologue
    .line 1119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1120
    iput-object p1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;->imageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

    .line 1121
    iput-object p2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;->tupleImageShadowTask:Lcom/android/camera/processing/imagebackend/ImageBackend$TupleDependentImagesShadowTask;

    .line 1122
    iput-object p3, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;->wrappedTask:Lcom/android/camera/processing/imagebackend/TaskImageContainer;

    .line 1123
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1131
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;->wrappedTask:Lcom/android/camera/processing/imagebackend/TaskImageContainer;

    invoke-virtual {v0}, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1133
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;->imageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;->wrappedTask:Lcom/android/camera/processing/imagebackend/TaskImageContainer;

    invoke-static {v0, v1}, Lcom/android/camera/processing/imagebackend/ImageBackend;->access$200(Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/processing/imagebackend/TaskImageContainer;)V

    .line 1136
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;->tupleImageShadowTask:Lcom/android/camera/processing/imagebackend/ImageBackend$TupleDependentImagesShadowTask;

    invoke-virtual {v0}, Lcom/android/camera/processing/imagebackend/ImageBackend$TupleDependentImagesShadowTask;->getImageShadowTask()Lcom/android/camera/processing/imagebackend/ImageShadowTask;

    move-result-object v0

    .line 1138
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;->imageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

    invoke-static {v1, v0}, Lcom/android/camera/processing/imagebackend/ImageBackend;->access$300(Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/processing/imagebackend/ImageShadowTask;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1139
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;->tupleImageShadowTask:Lcom/android/camera/processing/imagebackend/ImageBackend$TupleDependentImagesShadowTask;

    invoke-virtual {v1}, Lcom/android/camera/processing/imagebackend/ImageBackend$TupleDependentImagesShadowTask;->getDependentImages()Ljava/util/Set;

    move-result-object v1

    .line 1141
    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;->imageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

    invoke-static {v2, v1}, Lcom/android/camera/processing/imagebackend/ImageBackend;->access$400(Lcom/android/camera/processing/imagebackend/ImageBackend;Ljava/util/Set;)V

    .line 1144
    invoke-virtual {v0}, Lcom/android/camera/processing/imagebackend/ImageShadowTask;->getRunnableWhenDone()Ljava/lang/Runnable;

    move-result-object v0

    .line 1145
    if-eqz v0, :cond_0

    .line 1146
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;->wrappedTask:Lcom/android/camera/processing/imagebackend/TaskImageContainer;

    iget-object v1, v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->executor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_1

    .line 1147
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1153
    :cond_0
    :goto_0
    return-void

    .line 1133
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;->imageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;->wrappedTask:Lcom/android/camera/processing/imagebackend/TaskImageContainer;

    invoke-static {v1, v2}, Lcom/android/camera/processing/imagebackend/ImageBackend;->access$200(Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/processing/imagebackend/TaskImageContainer;)V

    throw v0

    .line 1149
    :cond_1
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/ImageBackend$TaskDoneWrapper;->wrappedTask:Lcom/android/camera/processing/imagebackend/TaskImageContainer;

    iget-object v1, v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
