.class public final Lcom/android/camera/ui/views/CameraUiInflater;
.super Ljava/lang/Object;
.source "CameraUiInflater.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final activityContentView$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQ1CDQ6ITJ9EHSK6RREEHIMST2MD5INEEO_:Lcom/android/camera/util/activity/ContentView;

.field private final isSecureActivity:Z

.field private final layoutInflater:Landroid/view/LayoutInflater;

.field private final window:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "CameraUiInflater"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/views/CameraUiInflater;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZLandroid/app/Activity;Landroid/view/Window;)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean p1, p0, Lcom/android/camera/ui/views/CameraUiInflater;->isSecureActivity:Z

    .line 69
    iput-object p2, p0, Lcom/android/camera/ui/views/CameraUiInflater;->activity:Landroid/app/Activity;

    .line 70
    iget-object v0, p0, Lcom/android/camera/ui/views/CameraUiInflater;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/views/CameraUiInflater;->layoutInflater:Landroid/view/LayoutInflater;

    .line 71
    new-instance v0, Lcom/android/camera/util/activity/ContentView;

    iget-object v1, p0, Lcom/android/camera/ui/views/CameraUiInflater;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/camera/util/activity/ContentView;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/camera/ui/views/CameraUiInflater;->activityContentView$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQ1CDQ6ITJ9EHSK6RREEHIMST2MD5INEEO_:Lcom/android/camera/util/activity/ContentView;

    .line 72
    iput-object p3, p0, Lcom/android/camera/ui/views/CameraUiInflater;->window:Landroid/view/Window;

    .line 73
    return-void
.end method


# virtual methods
.method public final inflate()Lcom/android/camera/ui/views/CameraUiModule;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 76
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 81
    iget-object v1, p0, Lcom/android/camera/ui/views/CameraUiInflater;->window:Landroid/view/Window;

    iget-boolean v2, p0, Lcom/android/camera/ui/views/CameraUiInflater;->isSecureActivity:Z

    .line 1118
    sget-object v0, Lcom/android/camera/ui/views/CameraUiInflater;->TAG:Ljava/lang/String;

    const-string v3, "Initializing Window Flags"

    invoke-static {v0, v3}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->instance()Lcom/android/camera/util/ApiHelper;

    move-result-object v0

    invoke-virtual {v1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/camera/util/ApiHelper;->isTablet(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1122
    const/4 v0, 0x1

    .line 1123
    sget-object v3, Lcom/android/camera/ui/views/CameraUiInflater;->TAG:Ljava/lang/String;

    const-string v4, "Set rotation to crossfade"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    :goto_0
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 1129
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 1130
    invoke-virtual {v1, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1135
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 1136
    sget-object v0, Lcom/android/camera/ui/views/CameraUiInflater;->TAG:Ljava/lang/String;

    const-string v3, "Requesting ActionBar"

    invoke-static {v0, v3}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    const/high16 v0, -0x80000000

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 1143
    sget-object v0, Lcom/android/camera/ui/views/CameraUiInflater;->TAG:Ljava/lang/String;

    const-string v3, "Setting window flags for drawing system bar backgrounds."

    invoke-static {v0, v3}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1156
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 1158
    if-eqz v2, :cond_0

    .line 1161
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1162
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1163
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1164
    sget-object v0, Lcom/android/camera/ui/views/CameraUiInflater;->TAG:Ljava/lang/String;

    const-string v1, "Initializing Secure Window Attributes"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/views/CameraUiInflater;->window:Landroid/view/Window;

    .line 1169
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x705

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/views/CameraUiInflater;->activityContentView$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FC5HN8QBMD5Q7IBQ1CDQ6ITJ9EHSK6RREEHIMST2MD5INEEO_:Lcom/android/camera/util/activity/ContentView;

    .line 2111
    sget-object v1, Lcom/android/camera/ui/views/CameraUiInflater;->TAG:Ljava/lang/String;

    const-string v2, "Initializing Camera Ui"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    const v1, 0x7f04001c

    invoke-virtual {v0, v1}, Lcom/android/camera/util/activity/ContentView;->setContentView(I)V

    .line 2114
    invoke-static {v0}, Lcom/android/camera/ui/views/CameraUi;->createFrom(Lcom/google/android/apps/camera/util/ui/FindViewById;)Lcom/android/camera/ui/views/CameraUi;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/android/camera/ui/views/CameraUiInflater;->activity:Landroid/app/Activity;

    .line 3097
    sget-object v2, Lcom/android/camera/ui/views/CameraUiInflater;->TAG:Ljava/lang/String;

    const-string v3, "Initializing Action Bar"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3098
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 3099
    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3102
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3105
    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    .line 93
    new-instance v2, Lcom/android/camera/ui/views/CameraUiModule;

    iget-object v3, p0, Lcom/android/camera/ui/views/CameraUiInflater;->layoutInflater:Landroid/view/LayoutInflater;

    invoke-direct {v2, v1, v3, v0}, Lcom/android/camera/ui/views/CameraUiModule;-><init>(Landroid/app/ActionBar;Landroid/view/LayoutInflater;Lcom/android/camera/ui/views/CameraUi;)V

    return-object v2

    .line 1125
    :cond_1
    const/4 v0, 0x2

    .line 1126
    sget-object v3, Lcom/android/camera/ui/views/CameraUiInflater;->TAG:Ljava/lang/String;

    const-string v4, "Set rotation to jumpcut"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
