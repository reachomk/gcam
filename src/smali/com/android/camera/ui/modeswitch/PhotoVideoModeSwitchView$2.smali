.class final Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$2;
.super Ljava/lang/Object;
.source "PhotoVideoModeSwitchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->setPhotoVideoPaginator(Lcom/android/camera/ui/PhotoVideoPaginator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$2;->this$0:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$2;->this$0:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    invoke-static {v0}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->access$000(Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;)Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->isInPhotoMode()Z

    move-result v0

    .line 148
    iget-object v1, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$2;->this$0:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    invoke-static {v1}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->access$100(Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;)Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$PhotoVideoModeSwitchListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$PhotoVideoModeSwitchListener;->onPhotoVideoScrollStarted()V

    .line 149
    iget-object v1, p0, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView$2;->this$0:Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->snapCover(FZ)V

    .line 150
    return-void

    .line 149
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
