.class final Lcom/android/camera/util/permissions/PermissionsCheckerImpl$3;
.super Ljava/lang/Object;
.source "PermissionsCheckerImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->showDialogMainThread(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/util/permissions/PermissionsCheckerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/util/permissions/PermissionsCheckerImpl;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl$3;->this$0:Lcom/android/camera/util/permissions/PermissionsCheckerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl$3;->this$0:Lcom/android/camera/util/permissions/PermissionsCheckerImpl;

    invoke-static {v0}, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->access$000(Lcom/android/camera/util/permissions/PermissionsCheckerImpl;)V

    .line 301
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
