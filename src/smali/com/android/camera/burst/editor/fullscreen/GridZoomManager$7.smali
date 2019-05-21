.class final Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$7;
.super Ljava/lang/Object;
.source "GridZoomManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->setupBottomBarControls(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

.field private synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 733
    iput-object p1, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$7;->this$0:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

    iput-object p2, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$7;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$7;->this$0:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

    invoke-static {v0}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->access$600(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;)Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$GridZoomEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$7;->val$uri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$GridZoomEventListener;->onEdit(Landroid/net/Uri;)V

    .line 737
    return-void
.end method
