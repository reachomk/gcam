.class public Lcom/android/camera/activity/LicensesActivity;
.super Landroid/app/Activity;
.source "LicensesActivity.java"


# instance fields
.field private final client:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    new-instance v0, Lcom/android/camera/activity/LicensesActivity$1;

    invoke-direct {v0, p0}, Lcom/android/camera/activity/LicensesActivity$1;-><init>(Lcom/android/camera/activity/LicensesActivity;)V

    iput-object v0, p0, Lcom/android/camera/activity/LicensesActivity;->client:Landroid/webkit/WebViewClient;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcom/android/camera/activity/LicensesActivity;->setContentView(I)V

    .line 20
    const v0, 0x7f110085

    invoke-virtual {p0, v0}, Lcom/android/camera/activity/LicensesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 21
    iget-object v1, p0, Lcom/android/camera/activity/LicensesActivity;->client:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 22
    const-string v1, "camera:license"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 23
    return-void
.end method
