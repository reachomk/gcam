.class final Lcom/android/camera/util/activity/SysUiFlagApplierImpl$2;
.super Ljava/lang/Object;
.source "SysUiFlagApplierImpl.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/util/activity/SysUiFlagApplierImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/util/activity/SysUiFlagApplierImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/util/activity/SysUiFlagApplierImpl;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/camera/util/activity/SysUiFlagApplierImpl$2;->this$0:Lcom/android/camera/util/activity/SysUiFlagApplierImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSystemUiVisibilityChange(I)V
    .locals 3

    .prologue
    .line 96
    invoke-static {}, Lcom/android/camera/util/activity/SysUiFlagApplierImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "onSystemUiVisibilityChange() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/android/camera/util/activity/SysUiFlagApplierImpl$2;->this$0:Lcom/android/camera/util/activity/SysUiFlagApplierImpl;

    invoke-static {v0}, Lcom/android/camera/util/activity/SysUiFlagApplierImpl;->access$200(Lcom/android/camera/util/activity/SysUiFlagApplierImpl;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 100
    iget-object v1, p0, Lcom/android/camera/util/activity/SysUiFlagApplierImpl$2;->this$0:Lcom/android/camera/util/activity/SysUiFlagApplierImpl;

    invoke-static {v1}, Lcom/android/camera/util/activity/SysUiFlagApplierImpl;->access$300(Lcom/android/camera/util/activity/SysUiFlagApplierImpl;)I

    move-result v1

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/android/camera/util/activity/SysUiFlagApplierImpl$2;->this$0:Lcom/android/camera/util/activity/SysUiFlagApplierImpl;

    invoke-static {v0}, Lcom/android/camera/util/activity/SysUiFlagApplierImpl;->access$400(Lcom/android/camera/util/activity/SysUiFlagApplierImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/camera/util/activity/SysUiFlagApplierImpl$2;->this$0:Lcom/android/camera/util/activity/SysUiFlagApplierImpl;

    invoke-virtual {v0}, Lcom/android/camera/util/activity/SysUiFlagApplierImpl;->reApplySysUiFlags()V

    goto :goto_0
.end method
