.class final Lcom/android/camera/util/permissions/PermissionsCheckerImpl$4;
.super Ljava/lang/Object;
.source "PermissionsCheckerImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 312
    iput-object p1, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl$4;->this$0:Lcom/android/camera/util/permissions/PermissionsCheckerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 315
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    const-string v2, "package:"

    iget-object v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl$4;->this$0:Lcom/android/camera/util/permissions/PermissionsCheckerImpl;

    invoke-static {v0}, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->access$200(Lcom/android/camera/util/permissions/PermissionsCheckerImpl;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 318
    iget-object v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl$4;->this$0:Lcom/android/camera/util/permissions/PermissionsCheckerImpl;

    invoke-static {v0}, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->access$300(Lcom/android/camera/util/permissions/PermissionsCheckerImpl;)Lcom/android/camera/util/activity/IntentStarter;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/camera/util/activity/IntentStarter;->startActivity(Landroid/content/Intent;)V

    .line 321
    iget-object v0, p0, Lcom/android/camera/util/permissions/PermissionsCheckerImpl$4;->this$0:Lcom/android/camera/util/permissions/PermissionsCheckerImpl;

    invoke-static {v0}, Lcom/android/camera/util/permissions/PermissionsCheckerImpl;->access$400(Lcom/android/camera/util/permissions/PermissionsCheckerImpl;)Lcom/android/camera/util/activity/ActivityFinishWithReason;

    move-result-object v0

    const-string v1, "Closing until required permissions are granted."

    invoke-virtual {v0, v1}, Lcom/android/camera/util/activity/ActivityFinishWithReason;->finish(Ljava/lang/String;)V

    .line 323
    return-void

    .line 317
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
