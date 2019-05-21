.class final Lcom/android/camera/util/activity/SysUiFlagApplierImpl$1;
.super Ljava/lang/Object;
.source "SysUiFlagApplierImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/util/activity/SysUiFlagApplierImpl;-><init>(Lcom/google/android/apps/camera/async/MainThread;Landroid/view/Window;)V
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
    .line 43
    iput-object p1, p0, Lcom/android/camera/util/activity/SysUiFlagApplierImpl$1;->this$0:Lcom/android/camera/util/activity/SysUiFlagApplierImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/util/activity/SysUiFlagApplierImpl$1;->this$0:Lcom/android/camera/util/activity/SysUiFlagApplierImpl;

    invoke-static {v0}, Lcom/android/camera/util/activity/SysUiFlagApplierImpl;->access$000(Lcom/android/camera/util/activity/SysUiFlagApplierImpl;)V

    .line 47
    return-void
.end method
