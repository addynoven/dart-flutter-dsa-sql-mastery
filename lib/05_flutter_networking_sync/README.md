# 🌐 Flutter Networking, Dio Interceptors & Offline Sync Mastery

A hands-on, production-grade Flutter practice suite covering **Dio REST APIs**, **Dio Interceptors**, **Automated 401 JWT Token Refresh**, **Offline Sync Pipelines**, and **Type-Safe Data Serialization**.

---

## 🚀 Features

- 🌐 **Dio & REST API Mastery**: Learn how to structure API requests, handle query parameters, headers, file uploads, and status codes.
- 🔒 **Automated Token Refresh**: Implement `QueuedInterceptor` to catch `401 Unauthorized` responses, pause pending requests, refresh JWT access tokens, and retry failed requests seamlessly.
- 💾 **Offline-First Sync Engine**: Build robust offline queueing mechanisms that cache local mutations when offline and sync to the server upon reconnection.
- 📱 **Interactive Flutter UI**: Every scenario includes a runnable Flutter app UI with mock HTTP adapters so you can test live API behavior and offline mode toggles visually!

---

## 📌 Quick Links
- 📋 **[Track Your Networking Progress on todo_networking.md](todo_networking.md)**
- ⚡ **[Dio Official Documentation](https://pub.dev/packages/dio)**

---

## 💡 Networking & Sync Cheat Sheet

### 1. Dio Interceptor Execution Lifecycle

```text
CLIENT REQUEST ──> onRequest()      -> Inject Auth Header: 'Bearer $token'
                       │
                  SERVER EXECUTION
                       │
               ┌───────┴───────┐
               ▼               ▼
          HTTP 200        HTTP 401
               │               │
        onResponse()       onError() -> Trigger Token Refresh Lock
               │               │
          EMIT DATA       Retry Failed Requests with New Token
```

---

### 2. HTTP Status Codes Cheat Sheet for Flutter Engineers

| Status Code | Meaning | Common Action in Flutter |
|---|---|---|
| `200 OK` | Request succeeded | Parse JSON response & emit UI data |
| `201 Created` | Resource created | Show success toast / navigate back |
| `400 Bad Request` | Invalid payload/parameters | Show form field validation errors |
| `401 Unauthorized` | Expired / missing JWT token | Intercept → Refresh Token → Retry Request |
| `403 Forbidden` | Insufficient permissions | Show "Access Denied" dialog |
| `404 Not Found` | Endpoint/Resource missing | Show empty state UI |
| `429 Too Many Requests` | API Rate limited | Apply Exponential Backoff Retry |
| `500 Server Error` | Backend internal error | Show "Server Error, Retry Later" UI |

---

## 🚀 How to Run Exercises

1. Install dependencies:
   ```bash
   cd flutter_networking_sync
   flutter pub get
   ```

2. Run any topic lesson or scenario as a Flutter App on Linux Desktop:
   ```bash
   # Run 401 JWT Token Refresh Scenario:
   flutter run -d linux lib/part2_interview_scenarios/01_jwt_auth_interceptor_flow.dart

   # Run Offline Sync Queue Scenario:
   flutter run -d linux lib/part2_interview_scenarios/02_offline_sync_queue.dart
   ```
