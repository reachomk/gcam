.class final Lcom/android/camera/module/video2/Video2Module$7;
.super Ljava/lang/Object;
.source "Video2Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/video2/Video2Module;->onMediaStorageFull(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/video2/Video2Module;

.field private synthetic val$isPreview:Z


# direct methods
.method constructor <init>(Lcom/android/camera/module/video2/Video2Module;Z)V
    .locals 0

    .prologue
    .line 815
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2Module$7;->this$0:Lcom/android/camera/module/video2/Video2Module;

    iput-boolean p2, p0, Lcom/android/camera/module/video2/Video2Module$7;->val$isPreview:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$7;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$000(Lcom/android/camera/module/video2/Video2Module;)Lcom/android/camera/module/video2/Video2ModuleUI;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/module/video2/Video2Module$7;->val$isPreview:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video2/Video2ModuleUI;->onMediaStorageFull(Z)V

    .line 819
    return-void
.end method
