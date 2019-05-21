.class final Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$SwipePagerAdapter$1;
.super Ljava/lang/Object;
.source "GridZoomManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$SwipePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$SwipePagerAdapter;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$SwipePagerAdapter;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$SwipePagerAdapter$1;->this$1:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$SwipePagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$SwipePagerAdapter$1;->this$1:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$SwipePagerAdapter;

    iget-object v0, v0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$SwipePagerAdapter;->this$0:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;

    invoke-virtual {v0}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->zoomOut()V

    .line 351
    return-void
.end method
