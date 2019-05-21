.class public Lcom/android/camera/util/lifecycle/ObservableApplication;
.super Landroid/app/Application;
.source "ObservableApplication.java"


# instance fields
.field protected final lifecycle:Lcom/android/camera/util/lifecycle/AppLifecycle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 9
    new-instance v0, Lcom/android/camera/util/lifecycle/AppLifecycle;

    invoke-direct {v0}, Lcom/android/camera/util/lifecycle/AppLifecycle;-><init>()V

    iput-object v0, p0, Lcom/android/camera/util/lifecycle/ObservableApplication;->lifecycle:Lcom/android/camera/util/lifecycle/AppLifecycle;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/camera/util/lifecycle/ObservableApplication;->lifecycle:Lcom/android/camera/util/lifecycle/AppLifecycle;

    invoke-virtual {v0}, Lcom/android/camera/util/lifecycle/AppLifecycle;->onAppCreate()V

    .line 18
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 19
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/util/lifecycle/ObservableApplication;->lifecycle:Lcom/android/camera/util/lifecycle/AppLifecycle;

    invoke-virtual {v0}, Lcom/android/camera/util/lifecycle/AppLifecycle;->onAppTerminate()V

    .line 24
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 25
    return-void
.end method
