.class final Lcom/android/camera/ui/ButtonManager$2;
.super Ljava/lang/Object;
.source "ButtonManager.java"

# interfaces
.implements Lcom/android/camera/widget/OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ButtonManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$preCb:Lcom/android/camera/ui/ButtonManager$ButtonCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ButtonManager$ButtonCallback;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/camera/ui/ButtonManager$2;->val$preCb:Lcom/android/camera/ui/ButtonManager$ButtonCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final stateChanged$51662RJ4E9NMIP1FEPKMATPFAPKMATPR94KLC___(I)V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/camera/ui/ButtonManager$2;->val$preCb:Lcom/android/camera/ui/ButtonManager$ButtonCallback;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/camera/ui/ButtonManager$2;->val$preCb:Lcom/android/camera/ui/ButtonManager$ButtonCallback;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/ButtonManager$ButtonCallback;->onStateChanged(I)V

    .line 439
    :cond_0
    return-void
.end method
