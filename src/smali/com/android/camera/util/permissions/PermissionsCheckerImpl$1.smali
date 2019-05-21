.class final Lcom/android/camera/util/permissions/PermissionsCheckerImpl$1;
.super Ljava/lang/Object;
.source "PermissionsCheckerImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/util/permissions/PermissionsCheckerImpl;
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
    .line 68
    iput-object p1, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl$1;->this$0:Lcom/android/camera/util/permissions/PermissionsCheckerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl$1;->this$0:Lcom/android/camera/util/permissions/PermissionsCheckerImpl;

    invoke-static {v0}, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->access$000(Lcom/android/camera/util/permissions/PermissionsCheckerImpl;)V

    .line 72
    return-void
.end method
