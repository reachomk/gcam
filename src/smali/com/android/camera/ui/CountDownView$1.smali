.class Lcom/android/camera/ui/CountDownView$1;
.super Ljava/lang/Object;
.source "CountDownView.java"

# interfaces
.implements Lcom/android/camera/widget/OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/CountDownView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/widget/OnStateChangeListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/BottomBarSideControls;

.field final synthetic val$callback:Lcom/android/camera/ui/ButtonManager$ButtonCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/BottomBarSideControls;Lcom/android/camera/ui/ButtonManager$ButtonCallback;)V
    .locals 0

    .prologue
    .line 1117
    iput-object p1, p0, Lcom/android/camera/ui/CountDownView$1;->this$0:Lcom/android/camera/ui/BottomBarSideControls;

    iput-object p2, p0, Lcom/android/camera/ui/CountDownView$1;->val$callback:Lcom/android/camera/ui/ButtonManager$ButtonCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public stateChanged$51662RJ4E9NMIP1FEPKMATPFAPKMATPR94KLC___(I)V
    .locals 2

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/android/camera/ui/CountDownView$1;->this$0:Lcom/android/camera/ui/BottomBarSideControls;

    invoke-static {v0}, Lcom/android/camera/ui/BottomBarSideControls;->access$000(Lcom/android/camera/ui/BottomBarSideControls;)Lcom/android/camera/widget/HfrButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/HfrButton;->setEnabled(Z)V

    .line 1123
    iget-object v0, p0, Lcom/android/camera/ui/CountDownView$1;->val$callback:Lcom/android/camera/ui/ButtonManager$ButtonCallback;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/ButtonManager$ButtonCallback;->onStateChanged(I)V

    .line 1124
    return-void
.end method
