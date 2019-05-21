.class final Lcom/android/camera/ui/wirers/OptionsBarUiWirer$14;
.super Ljava/lang/Object;
.source "OptionsBarUiWirer.java"

# interfaces
.implements Lcom/android/camera/ui/MainActivityLayout$MotionEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/wirers/OptionsBarUiWirer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer$14;->val$optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer$14;->val$optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->onTouchDownEventIntercepted(II)V

    .line 276
    return-void
.end method
