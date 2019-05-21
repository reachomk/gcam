.class final Lcom/android/camera/activity/LicensesActivity$1;
.super Landroid/webkit/WebViewClient;
.source "LicensesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/activity/LicensesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/activity/LicensesActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/activity/LicensesActivity;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/camera/activity/LicensesActivity$1;->this$0:Lcom/android/camera/activity/LicensesActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 4

    .prologue
    .line 29
    const-string v0, "camera:license"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/android/camera/activity/LicensesActivity$1;->this$0:Lcom/android/camera/activity/LicensesActivity;

    invoke-virtual {v0}, Lcom/android/camera/activity/LicensesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 31
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v2, "text/html"

    const-string v3, "utf8"

    invoke-direct {v0, v2, v3, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 33
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
