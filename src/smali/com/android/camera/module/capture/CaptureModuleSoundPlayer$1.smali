.class final Lcom/android/camera/module/capture/CaptureModuleSoundPlayer$1;
.super Ljava/lang/Object;
.source "CaptureModuleSoundPlayer.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->play(I)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

.field private synthetic val$resourceId:I


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;I)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer$1;->this$0:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    iput p2, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer$1;->val$resourceId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 77
    invoke-static {}, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->access$100()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer$1;->val$resourceId:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Sound resource "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " failed to load: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer$1;->this$0:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->access$000(Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;)Lcom/android/camera/audio/SoundPlayer;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer$1;->val$resourceId:I

    invoke-interface {v0, v1}, Lcom/android/camera/audio/SoundPlayer;->unloadSound(I)Z

    .line 79
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 63
    check-cast p1, Ljava/lang/Boolean;

    .line 1066
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1067
    :goto_0
    if-eqz v0, :cond_1

    .line 1068
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer$1;->this$0:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->access$000(Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;)Lcom/android/camera/audio/SoundPlayer;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer$1;->val$resourceId:I

    const v2, 0x3f19999a    # 0.6f

    invoke-interface {v0, v1, v2}, Lcom/android/camera/audio/SoundPlayer;->play(IF)I

    :goto_1
    return-void

    .line 1066
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1070
    :cond_1
    invoke-static {}, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->access$100()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer$1;->val$resourceId:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Sound resource "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed to load."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer$1;->this$0:Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;->access$000(Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;)Lcom/android/camera/audio/SoundPlayer;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer$1;->val$resourceId:I

    invoke-interface {v0, v1}, Lcom/android/camera/audio/SoundPlayer;->unloadSound(I)Z

    goto :goto_1
.end method
