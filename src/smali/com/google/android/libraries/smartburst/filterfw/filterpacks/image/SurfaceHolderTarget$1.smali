.class Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget$1;
.super Ljava/lang/Object;
.source "SurfaceHolderTarget.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;

    invoke-static {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->access$000(Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;Landroid/view/SurfaceHolder;)V

    .line 51
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;

    invoke-static {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->access$000(Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;Landroid/view/SurfaceHolder;)V

    .line 56
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/SurfaceHolderTarget;->onDestroySurface()V

    .line 61
    return-void
.end method
