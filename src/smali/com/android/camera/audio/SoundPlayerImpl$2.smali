.class final Lcom/android/camera/audio/SoundPlayerImpl$2;
.super Ljava/util/TimerTask;
.source "SoundPlayerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/audio/SoundPlayerImpl;->playLoopDelayed(IFI)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/audio/SoundPlayerImpl;

.field private synthetic val$future:Lcom/google/common/util/concurrent/SettableFuture;

.field private synthetic val$resourceId:I

.field private synthetic val$volume:F


# direct methods
.method constructor <init>(Lcom/android/camera/audio/SoundPlayerImpl;Lcom/google/common/util/concurrent/SettableFuture;IF)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/camera/audio/SoundPlayerImpl$2;->this$0:Lcom/android/camera/audio/SoundPlayerImpl;

    iput-object p2, p0, Lcom/android/camera/audio/SoundPlayerImpl$2;->val$future:Lcom/google/common/util/concurrent/SettableFuture;

    iput p3, p0, Lcom/android/camera/audio/SoundPlayerImpl$2;->val$resourceId:I

    iput p4, p0, Lcom/android/camera/audio/SoundPlayerImpl$2;->val$volume:F

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/camera/audio/SoundPlayerImpl$2;->val$future:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v1, p0, Lcom/android/camera/audio/SoundPlayerImpl$2;->this$0:Lcom/android/camera/audio/SoundPlayerImpl;

    iget v2, p0, Lcom/android/camera/audio/SoundPlayerImpl$2;->val$resourceId:I

    iget v3, p0, Lcom/android/camera/audio/SoundPlayerImpl$2;->val$volume:F

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/audio/SoundPlayerImpl;->play(IFI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 187
    return-void
.end method
