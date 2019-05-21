.class final Lcom/android/camera/util/layout/ActivityLayoutManagerImpl$2;
.super Ljava/lang/Object;
.source "ActivityLayoutManagerImpl.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl$2;->this$0:Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl$2;->this$0:Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;

    invoke-static {v0}, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->access$000(Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    const-string v1, "OnGlobalLayoutListener.onGlobalLayout"

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl$2;->this$0:Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;

    invoke-static {v0}, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->access$600(Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;)V

    .line 78
    return-void
.end method
