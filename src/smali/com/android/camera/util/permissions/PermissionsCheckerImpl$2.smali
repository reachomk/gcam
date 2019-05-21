.class final Lcom/android/camera/util/permissions/PermissionsCheckerImpl$2;
.super Ljava/lang/Object;
.source "PermissionsCheckerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->showDialog(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/util/permissions/PermissionsCheckerImpl;

.field private synthetic val$isKeyGuardLocked:Z

.field private synthetic val$stringId:I


# direct methods
.method constructor <init>(Lcom/android/camera/util/permissions/PermissionsCheckerImpl;IZ)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl$2;->this$0:Lcom/android/camera/util/permissions/PermissionsCheckerImpl;

    iput p2, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl$2;->val$stringId:I

    iput-boolean p3, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl$2;->val$isKeyGuardLocked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl$2;->this$0:Lcom/android/camera/util/permissions/PermissionsCheckerImpl;

    iget v1, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl$2;->val$stringId:I

    iget-boolean v2, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl$2;->val$isKeyGuardLocked:Z

    invoke-static {v0, v1, v2}, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->access$100(Lcom/android/camera/util/permissions/PermissionsCheckerImpl;IZ)V

    .line 283
    return-void
.end method
